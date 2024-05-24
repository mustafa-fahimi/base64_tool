import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/core/core.dart';
import 'package:database_service/database_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'riverpod_injection.g.dart';

@Riverpod(keepAlive: true)
Talker talker(TalkerRef ref) {
  return TalkerFlutter.init();
}

@Riverpod(keepAlive: true)
AppHelper appHelper(AppHelperRef ref) {
  return AppHelper(ref);
}

@Riverpod(keepAlive: true)
SecureStorageService secureStorageService(SecureStorageServiceRef ref) {
  return SecureStorageServiceImpl();
}

@Riverpod(keepAlive: true)
Raw<AppRouter> appRouter(AppRouterRef ref) {
  return AppRouter();
}

@riverpod
FormValidators formValidators(FormValidatorsRef ref) {
  return FormValidators();
}
