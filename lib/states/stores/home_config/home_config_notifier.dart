import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vid_layer/models/home_config/home_config_model.dart';

part 'home_config_notifier.g.dart';

@riverpod
class HomeConfigNotifier extends _$HomeConfigNotifier {
  @override
  HomeConfigModel build() => HomeConfigModel();

  void updateFont(String font) {
    state = state.copyWith(selectedFont: font);
  }

  void updateFontSize(double size) {
    state = state.copyWith(fontSize: size);
  }

  void updateTextColor(Color color) {
    state = state.copyWith(textColor: color);
  }

  void updateUseNetworkVideo(bool use) {
    state = state.copyWith(useNetworkVideo: use);
  }

  void updateOverlayText(String text) {
    state = state.copyWith(overlayText: text);
  }

  void updatePanelOffset(Offset offset) {
    state = state.copyWith(panelOffset: offset);
  }

  void updateOrientation(Orientation orientation) {
    state = state.copyWith(lastOrientation: orientation);
  }
}
