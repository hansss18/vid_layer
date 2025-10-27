import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vid_layer/states/stores/home_config/home_config_notifier.dart';
import 'package:vid_layer/views/sections/color_picker_dialog_section.dart';

class FloatingPanelSection extends ConsumerWidget {
  final TextEditingController textController;
  final TextEditingController videoUrlController;
  final Future<void> Function({String? url}) initVideo;
  final Future<void> Function(BuildContext context) showVideoUrlInput;

  const FloatingPanelSection({
    super.key,
    required this.textController,
    required this.videoUrlController,
    required this.initVideo,
    required this.showVideoUrlInput,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(homeConfigProvider);

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          width: 280,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white24),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: textController,
                  onChanged: (value) => ref
                      .read(homeConfigProvider.notifier)
                      .updateOverlayText(value),
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: "Overlay Text",
                    labelStyle: TextStyle(color: Colors.white70),
                    isDense: true,
                    border: InputBorder.none,
                  ),
                ),
                const SizedBox(height: 8),
                DropdownButton<String>(
                  value: config.selectedFont,
                  dropdownColor: Colors.black87,
                  style: const TextStyle(color: Colors.white),
                  items:
                      [
                        'Roboto',
                        'Montserrat',
                        'Poppins',
                        'Lobster',
                        'Pacifico',
                      ].map((font) {
                        return DropdownMenuItem(
                          value: font,
                          child: Text(font, style: GoogleFonts.getFont(font)),
                        );
                      }).toList(),
                  onChanged: (font) {
                    if (font != null) {
                      ref.read(homeConfigProvider.notifier).updateFont(font);
                    }
                  },
                ),
                Row(
                  children: [
                    const Text(
                      "Color:",
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () async {
                        final newColor = await showDialog<Color>(
                          context: context,
                          builder: (_) => ColorPickerDialogSection(
                            current: config.textColor,
                          ),
                        );
                        if (newColor != null) {
                          ref
                              .read(homeConfigProvider.notifier)
                              .updateTextColor(newColor);
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor: config.textColor,
                        radius: 12,
                        child: const Icon(
                          Icons.edit,
                          size: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(color: Colors.white24, height: 24),
                Text(
                  "Font Size: ${config.fontSize.toStringAsFixed(0)}",
                  style: const TextStyle(color: Colors.white70),
                ),
                Slider(
                  value: config.fontSize,
                  min: 10,
                  max: 100,
                  divisions: 18,
                  activeColor: Colors.white,
                  inactiveColor: Colors.white24,
                  label: config.fontSize.toStringAsFixed(0),
                  onChanged: (value) {
                    ref.read(homeConfigProvider.notifier).updateFontSize(value);
                  },
                ),
                const Divider(color: Colors.white24, height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Use URL",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Switch(
                      value: config.useNetworkVideo,
                      onChanged: (val) async {
                        ref
                            .read(homeConfigProvider.notifier)
                            .updateUseNetworkVideo(val);
                        if (val) {
                          await showVideoUrlInput(context);
                        } else {
                          await initVideo();
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
