import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/core/core.dart';
import 'package:base64_tool/src/core/utils/objectbox_helper.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'global_providers.g.dart';

@Riverpod(keepAlive: true)
Talker talker(TalkerRef ref) {
  return TalkerFlutter.init();
}

@Riverpod(keepAlive: true)
AppHelper appHelper(AppHelperRef ref) {
  return AppHelper(ref);
}

@Riverpod(keepAlive: true)
Raw<AppRouter> appRouter(AppRouterRef ref) {
  return AppRouter();
}

@Riverpod(keepAlive: true)
FormValidators formValidators(FormValidatorsRef ref) {
  return FormValidators();
}

@Riverpod(keepAlive: true)
Future<ObjectBoxHelper> objectBoxHelper(ObjectBoxHelperRef ref) async {
  return await ObjectBoxHelper.create();
}
