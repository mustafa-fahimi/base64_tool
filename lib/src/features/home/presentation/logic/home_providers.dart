import 'package:base64_tool/src/injection/global_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

@Riverpod(keepAlive: true)
class EncodingSwitchState extends _$EncodingSwitchState {
  @override
  bool build() {
    return true;
  }

  void toggle() {
    state = !state;
  }
}

@riverpod
class ConvertedInput extends _$ConvertedInput {
  @override
  String build() {
    return '';
  }

  void convert(String value) {
    if (value.isEmpty) {
      state = value;
      return;
    }

    final encodingState = ref.read(encodingSwitchStateProvider);
    if (encodingState) {
      state = ref.read(appHelperProvider).convertToBase64(value);
    } else {
      state = ref.read(appHelperProvider).decodeFromBase64(value);
    }
  }
}
