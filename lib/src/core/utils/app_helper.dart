import 'dart:async';
import 'dart:convert';

import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/core/core.dart';
import 'package:base64_tool/src/injection/global_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:toastification/toastification.dart';

class AppHelper {
  AppHelper(this.ref);

  final Ref ref;

  void logMessage(
    dynamic message, {
    LogLevel logLevel = LogLevel.verbose,
  }) {
    ref.read(talkerProvider).log(message, logLevel: logLevel);
  }

  void displayToast(
    BuildContext context, {
    required String message,
    ToastificationType type = ToastificationType.success,
  }) {
    toastification.show(
      context: context,
      title: Text(
        message,
        style: kMediumTextStyle.copyWith(color: Colors.white),
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
      ),
      alignment: Alignment.bottomCenter,
      autoCloseDuration: const Duration(milliseconds: 2500),
      closeButtonShowType: CloseButtonShowType.always,
      showProgressBar: false,
      style: ToastificationStyle.fillColored,
      type: type,
    );
  }

  Future<void> displayBottomSheet(
    BuildContext context, {
    required Widget child,
    bool isDismissible = false,
    bool enableDrag = false,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      elevation: 10,
      showDragHandle: false,
      builder: (_) => child,
    );
  }

  Future<T?> displayDialog<T>(
    BuildContext context, {
    required Widget child,
    bool isDismissible = false,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: isDismissible,
      builder: (_) => Material(
        type: MaterialType.transparency,
        child: AlertDialog(
          elevation: 10,
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          content: child,
        ),
      ),
    );
  }

  void setSystemUIOverlayStyle([
    Brightness brightness = Brightness.light,
  ]) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: brightness,
          statusBarIconBrightness: brightness == Brightness.light
              ? Brightness.dark
              : Brightness.light,
          systemNavigationBarIconBrightness: brightness == Brightness.light
              ? Brightness.dark
              : Brightness.light,
          systemNavigationBarContrastEnforced: brightness == Brightness.light,
          systemStatusBarContrastEnforced: brightness == Brightness.light,
          systemNavigationBarColor: brightness == Brightness.light
              ? kBackgroundColor
              : Colors.black38,
          statusBarColor: brightness == Brightness.light
              ? kBackgroundColor
              : Colors.black38,
        ),
      );
    }
  }

  void closeSoftKeyboard(BuildContext context) {
    context.focusScope.unfocus();
  }

  String convertToBase64(String input) {
    final bytes = utf8.encode(input);
    final base64String = base64Encode(bytes);
    return base64String;
  }

  String decodeFromBase64(String base64String) {
    final bytes = base64Decode(base64String);
    final decodedString = utf8.decode(bytes);
    return decodedString;
  }
}
