import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_config_model.freezed.dart';

@freezed
abstract class HomeConfigModel with _$HomeConfigModel {
  const factory HomeConfigModel({
    @Default("Welcome to Infinitesimul") String overlayText,
    @Default('Roboto') String selectedFont,
    @Default(22) double fontSize,
    @Default(Colors.white) textColor,
    @Default(false) useNetworkVideo,
    @Default(Offset(16, 16)) Offset panelOffset,
    Orientation? lastOrientation,
  }) = _HomeConfigModel;
}
