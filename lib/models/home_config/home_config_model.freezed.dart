// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeConfigModel {

 String get overlayText; String get selectedFont; double get fontSize; dynamic get textColor; dynamic get useNetworkVideo; Offset get panelOffset; Orientation? get lastOrientation;
/// Create a copy of HomeConfigModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeConfigModelCopyWith<HomeConfigModel> get copyWith => _$HomeConfigModelCopyWithImpl<HomeConfigModel>(this as HomeConfigModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeConfigModel&&(identical(other.overlayText, overlayText) || other.overlayText == overlayText)&&(identical(other.selectedFont, selectedFont) || other.selectedFont == selectedFont)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&const DeepCollectionEquality().equals(other.textColor, textColor)&&const DeepCollectionEquality().equals(other.useNetworkVideo, useNetworkVideo)&&(identical(other.panelOffset, panelOffset) || other.panelOffset == panelOffset)&&(identical(other.lastOrientation, lastOrientation) || other.lastOrientation == lastOrientation));
}


@override
int get hashCode => Object.hash(runtimeType,overlayText,selectedFont,fontSize,const DeepCollectionEquality().hash(textColor),const DeepCollectionEquality().hash(useNetworkVideo),panelOffset,lastOrientation);

@override
String toString() {
  return 'HomeConfigModel(overlayText: $overlayText, selectedFont: $selectedFont, fontSize: $fontSize, textColor: $textColor, useNetworkVideo: $useNetworkVideo, panelOffset: $panelOffset, lastOrientation: $lastOrientation)';
}


}

/// @nodoc
abstract mixin class $HomeConfigModelCopyWith<$Res>  {
  factory $HomeConfigModelCopyWith(HomeConfigModel value, $Res Function(HomeConfigModel) _then) = _$HomeConfigModelCopyWithImpl;
@useResult
$Res call({
 String overlayText, String selectedFont, double fontSize, dynamic textColor, dynamic useNetworkVideo, Offset panelOffset, Orientation? lastOrientation
});




}
/// @nodoc
class _$HomeConfigModelCopyWithImpl<$Res>
    implements $HomeConfigModelCopyWith<$Res> {
  _$HomeConfigModelCopyWithImpl(this._self, this._then);

  final HomeConfigModel _self;
  final $Res Function(HomeConfigModel) _then;

/// Create a copy of HomeConfigModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? overlayText = null,Object? selectedFont = null,Object? fontSize = null,Object? textColor = freezed,Object? useNetworkVideo = freezed,Object? panelOffset = null,Object? lastOrientation = freezed,}) {
  return _then(_self.copyWith(
overlayText: null == overlayText ? _self.overlayText : overlayText // ignore: cast_nullable_to_non_nullable
as String,selectedFont: null == selectedFont ? _self.selectedFont : selectedFont // ignore: cast_nullable_to_non_nullable
as String,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as dynamic,useNetworkVideo: freezed == useNetworkVideo ? _self.useNetworkVideo : useNetworkVideo // ignore: cast_nullable_to_non_nullable
as dynamic,panelOffset: null == panelOffset ? _self.panelOffset : panelOffset // ignore: cast_nullable_to_non_nullable
as Offset,lastOrientation: freezed == lastOrientation ? _self.lastOrientation : lastOrientation // ignore: cast_nullable_to_non_nullable
as Orientation?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeConfigModel].
extension HomeConfigModelPatterns on HomeConfigModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeConfigModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeConfigModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeConfigModel value)  $default,){
final _that = this;
switch (_that) {
case _HomeConfigModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeConfigModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomeConfigModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String overlayText,  String selectedFont,  double fontSize,  dynamic textColor,  dynamic useNetworkVideo,  Offset panelOffset,  Orientation? lastOrientation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeConfigModel() when $default != null:
return $default(_that.overlayText,_that.selectedFont,_that.fontSize,_that.textColor,_that.useNetworkVideo,_that.panelOffset,_that.lastOrientation);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String overlayText,  String selectedFont,  double fontSize,  dynamic textColor,  dynamic useNetworkVideo,  Offset panelOffset,  Orientation? lastOrientation)  $default,) {final _that = this;
switch (_that) {
case _HomeConfigModel():
return $default(_that.overlayText,_that.selectedFont,_that.fontSize,_that.textColor,_that.useNetworkVideo,_that.panelOffset,_that.lastOrientation);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String overlayText,  String selectedFont,  double fontSize,  dynamic textColor,  dynamic useNetworkVideo,  Offset panelOffset,  Orientation? lastOrientation)?  $default,) {final _that = this;
switch (_that) {
case _HomeConfigModel() when $default != null:
return $default(_that.overlayText,_that.selectedFont,_that.fontSize,_that.textColor,_that.useNetworkVideo,_that.panelOffset,_that.lastOrientation);case _:
  return null;

}
}

}

/// @nodoc


class _HomeConfigModel implements HomeConfigModel {
  const _HomeConfigModel({this.overlayText = "Welcome to Infinitesimul", this.selectedFont = 'Roboto', this.fontSize = 22, this.textColor = Colors.white, this.useNetworkVideo = false, this.panelOffset = const Offset(16, 16), this.lastOrientation});
  

@override@JsonKey() final  String overlayText;
@override@JsonKey() final  String selectedFont;
@override@JsonKey() final  double fontSize;
@override@JsonKey() final  dynamic textColor;
@override@JsonKey() final  dynamic useNetworkVideo;
@override@JsonKey() final  Offset panelOffset;
@override final  Orientation? lastOrientation;

/// Create a copy of HomeConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeConfigModelCopyWith<_HomeConfigModel> get copyWith => __$HomeConfigModelCopyWithImpl<_HomeConfigModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeConfigModel&&(identical(other.overlayText, overlayText) || other.overlayText == overlayText)&&(identical(other.selectedFont, selectedFont) || other.selectedFont == selectedFont)&&(identical(other.fontSize, fontSize) || other.fontSize == fontSize)&&const DeepCollectionEquality().equals(other.textColor, textColor)&&const DeepCollectionEquality().equals(other.useNetworkVideo, useNetworkVideo)&&(identical(other.panelOffset, panelOffset) || other.panelOffset == panelOffset)&&(identical(other.lastOrientation, lastOrientation) || other.lastOrientation == lastOrientation));
}


@override
int get hashCode => Object.hash(runtimeType,overlayText,selectedFont,fontSize,const DeepCollectionEquality().hash(textColor),const DeepCollectionEquality().hash(useNetworkVideo),panelOffset,lastOrientation);

@override
String toString() {
  return 'HomeConfigModel(overlayText: $overlayText, selectedFont: $selectedFont, fontSize: $fontSize, textColor: $textColor, useNetworkVideo: $useNetworkVideo, panelOffset: $panelOffset, lastOrientation: $lastOrientation)';
}


}

/// @nodoc
abstract mixin class _$HomeConfigModelCopyWith<$Res> implements $HomeConfigModelCopyWith<$Res> {
  factory _$HomeConfigModelCopyWith(_HomeConfigModel value, $Res Function(_HomeConfigModel) _then) = __$HomeConfigModelCopyWithImpl;
@override @useResult
$Res call({
 String overlayText, String selectedFont, double fontSize, dynamic textColor, dynamic useNetworkVideo, Offset panelOffset, Orientation? lastOrientation
});




}
/// @nodoc
class __$HomeConfigModelCopyWithImpl<$Res>
    implements _$HomeConfigModelCopyWith<$Res> {
  __$HomeConfigModelCopyWithImpl(this._self, this._then);

  final _HomeConfigModel _self;
  final $Res Function(_HomeConfigModel) _then;

/// Create a copy of HomeConfigModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? overlayText = null,Object? selectedFont = null,Object? fontSize = null,Object? textColor = freezed,Object? useNetworkVideo = freezed,Object? panelOffset = null,Object? lastOrientation = freezed,}) {
  return _then(_HomeConfigModel(
overlayText: null == overlayText ? _self.overlayText : overlayText // ignore: cast_nullable_to_non_nullable
as String,selectedFont: null == selectedFont ? _self.selectedFont : selectedFont // ignore: cast_nullable_to_non_nullable
as String,fontSize: null == fontSize ? _self.fontSize : fontSize // ignore: cast_nullable_to_non_nullable
as double,textColor: freezed == textColor ? _self.textColor : textColor // ignore: cast_nullable_to_non_nullable
as dynamic,useNetworkVideo: freezed == useNetworkVideo ? _self.useNetworkVideo : useNetworkVideo // ignore: cast_nullable_to_non_nullable
as dynamic,panelOffset: null == panelOffset ? _self.panelOffset : panelOffset // ignore: cast_nullable_to_non_nullable
as Offset,lastOrientation: freezed == lastOrientation ? _self.lastOrientation : lastOrientation // ignore: cast_nullable_to_non_nullable
as Orientation?,
  ));
}


}

// dart format on
