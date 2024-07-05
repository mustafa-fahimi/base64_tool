import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:base64_tool/app.dart';
import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/injection/global_providers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final providerContainer = ProviderContainer();
  providerContainer.observers.add(
    TalkerRiverpodObserver(
      settings: const TalkerRiverpodLoggerSettings(
        printStateFullData: false,
        printProviderAdded: false,
      ),
    ),
  );
  await _startupSetup(providerContainer);

  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: const App(),
    ),
  );
}

Future<void> _startupSetup(ProviderContainer providerContainer) async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows) {
    await windowManager.ensureInitialized();
  }
  _errorWidgetBuilder();
  await _setAppOrientations();
  providerContainer.read(appHelperProvider).setSystemUIOverlayStyle();
  providerContainer.read(objectBoxHelperProvider);
}

void _errorWidgetBuilder() {
  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pinkAccent.withOpacity(.3),
            borderRadius: BorderRadius.circular(12),
          ),
          width: 300,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline_outlined,
                color: Colors.pink,
                size: 80,
              ),
              const SizedBox(height: 10),
              const Text(
                'Error Occurred!',
                style: kHeading5TextStyle,
              ),
              const SizedBox(height: 10),
              Text(
                kReleaseMode
                    ? 'Oops... Something went wrong!'
                    : errorDetails.exception.toString(),
                textAlign: TextAlign.center,
                style: kNormalTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  };
}

Future<void> _setAppOrientations() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}
