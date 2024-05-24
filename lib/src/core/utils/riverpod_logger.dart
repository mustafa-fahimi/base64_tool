import 'package:base64_tool/src/injection/riverpod_injection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RiverpodLogger extends ProviderObserver {
  RiverpodLogger(this.container);

  final ProviderContainer container;

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    container.read(appHelperProvider).logMessage('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "new value": "${newValue is AsyncData ? newValue.value : newValue}"
}''');
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    container.read(appHelperProvider).logMessage(
          'Provider $provider threw $error at $stackTrace',
        );
  }
}
