import 'dart:async';
import 'dart:developer';

import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/core/core.dart';
import 'package:base64_tool/src/injection/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final providerContainer = ProviderContainer();
  providerContainer.observers.add(RiverpodLogger(providerContainer));
  await _startupSetup(providerContainer);

  runApp(
    UncontrolledProviderScope(
      container: providerContainer,
      child: await builder(),
    ),
  );
}

Future<void> _startupSetup(ProviderContainer providerContainer) async {
  WidgetsFlutterBinding.ensureInitialized();
  _errorWidgetBuilder();
  await _setAppOrientations();
  providerContainer.read(appHelperProvider).setSystemUIOverlayStyle();
  await providerContainer.read(secureStorageServiceProvider).initialize();
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
