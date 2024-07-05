import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_providers.g.dart';

@Riverpod(keepAlive: true)
class EncodingSwitchState extends _$EncodingSwitchState {
  @override
  bool build() {
    return true;
  }

  void toggle(){
    state = !state;
  }
}
