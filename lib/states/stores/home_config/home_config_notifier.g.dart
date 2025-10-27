// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_config_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(HomeConfigNotifier)
const homeConfigProvider = HomeConfigNotifierProvider._();

final class HomeConfigNotifierProvider
    extends $NotifierProvider<HomeConfigNotifier, HomeConfigModel> {
  const HomeConfigNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeConfigProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeConfigNotifierHash();

  @$internal
  @override
  HomeConfigNotifier create() => HomeConfigNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HomeConfigModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HomeConfigModel>(value),
    );
  }
}

String _$homeConfigNotifierHash() =>
    r'b4e71c2c7962af48211d386a074cdea71ba6b977';

abstract class _$HomeConfigNotifier extends $Notifier<HomeConfigModel> {
  HomeConfigModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<HomeConfigModel, HomeConfigModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<HomeConfigModel, HomeConfigModel>,
              HomeConfigModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
