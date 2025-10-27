import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pip/pip.dart';
import 'package:vid_layer/states/stores/home_config/home_config_notifier.dart';
import 'package:vid_layer/views/sections/floating_panel_section.dart';
import 'package:vid_layer/views/sections/video_url_dialog_section.dart';
import 'package:video_player/video_player.dart';
import 'package:vid_layer/gen/assets.gen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with WidgetsBindingObserver {
  late VideoPlayerController _controller;
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _videoUrlController = TextEditingController();
  late Pip _pip;

  Future<void> _initVideo({String? url}) async {
    final config = ref.read(homeConfigProvider);
    _controller = config.useNetworkVideo && url != null
        ? VideoPlayerController.networkUrl(Uri.parse(url))
        : VideoPlayerController.asset(Assets.videos.countdown);

    await _controller.initialize();
    _controller
      ..setLooping(true)
      ..play();

    setState(() {});
  }

  Future<void> _initPip() async {
    _pip = Pip();

    bool isSupported = await _pip.isSupported();
    if (!isSupported) {
      return;
    }

    PipOptions options;
    if (Platform.isAndroid) {
      options = PipOptions(
        autoEnterEnabled: true,
        aspectRatioX: 16,
        aspectRatioY: 9,
      );
    } else if (Platform.isIOS) {
      options = PipOptions(
        autoEnterEnabled: true,
        contentView: 1,
        sourceContentView: 0,
        preferredContentWidth: 480,
        preferredContentHeight: 270,
        controlStyle: 2,
      );
    } else {
      return;
    }

    await _pip.setup(options);

    await _pip.registerStateChangedObserver(
      PipStateChangedObserver(
        onPipStateChanged: (state, error) {
          switch (state) {
            case PipState.pipStateStarted:
              break;
            case PipState.pipStateStopped:
              break;
            case PipState.pipStateFailed:
              break;
          }
        },
      ),
    );
  }

  Future<void> _showVideoUrlInput(BuildContext context) async {
    final url = await showDialog<String>(
      context: context,
      builder: (_) => VideoUrlDialogSection(controller: _videoUrlController),
    );

    if (url != null && url.isNotEmpty) {
      await _controller.pause();
      await _controller.dispose();
      await _initVideo(url: url);
    } else {
      ref.read(homeConfigProvider.notifier).updateUseNetworkVideo(false);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initVideo();
    _initPip();

    final config = ref.read(homeConfigProvider);
    _textController.text = config.overlayText;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (Platform.isIOS) {
      if (state == AppLifecycleState.inactive) {
        _pip.start();
      } else if (state == AppLifecycleState.resumed) {
        _pip.stop();
      }
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _pip.unregisterStateChangedObserver();
    _pip.dispose();
    _controller.dispose();
    _textController.dispose();
    _videoUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final config = ref.watch(homeConfigProvider);
    final notifier = ref.read(homeConfigProvider.notifier);

    final orientation = MediaQuery.of(context).orientation;

    if (config.lastOrientation != orientation) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        notifier.updateOrientation(orientation);
        notifier.updatePanelOffset(const Offset(16, 16));
      });
    }

    final safePadding = MediaQuery.of(context).padding;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.center,
        children: [
          if (_controller.value.isInitialized)
            Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  children: [
                    VideoPlayer(_controller),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Text(
                        config.overlayText,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          config.selectedFont,
                          fontSize: config.fontSize,
                          fontWeight: FontWeight.bold,
                          color: config.textColor,
                          shadows: const [
                            Shadow(
                              color: Colors.black54,
                              offset: Offset(2, 2),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          else
            const Center(child: CircularProgressIndicator()),
          Positioned(
            left: config.panelOffset.dx,
            top: config.panelOffset.dy,
            child: GestureDetector(
              onPanUpdate: (details) {
                final newOffset = Offset(
                  (config.panelOffset.dx + details.delta.dx).clamp(
                    0,
                    size.width - 300,
                  ),
                  (config.panelOffset.dy + details.delta.dy).clamp(
                    safePadding.top,
                    size.height - 200,
                  ),
                );
                notifier.updatePanelOffset(newOffset);
              },
              child: FloatingPanelSection(
                textController: _textController,
                videoUrlController: _videoUrlController,
                initVideo: _initVideo,
                showVideoUrlInput: _showVideoUrlInput,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
