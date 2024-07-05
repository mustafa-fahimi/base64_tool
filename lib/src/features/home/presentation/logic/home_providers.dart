import 'package:base64_tool/src/features/home/domain/models/base64_model.dart';
import 'package:base64_tool/src/injection/feature_injection/home_feature_providers.dart';
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

@riverpod
class SaveConvertedText extends _$SaveConvertedText {
  @override
  Future<bool> build() async => Future.value(false);

  Future<void> save(Base64Model base64Model) async {
    state = const AsyncLoading();
    final result = await ref.read(homeRepositoryProvider).saveConvertedText(
          base64Model,
        );
    result.fold(
      (l) {
        state = AsyncError(l, StackTrace.current);
      },
      (r) {
        state = const AsyncData(true);
      },
    );
  }
}
