import 'package:base64_tool/src/config/config.dart';
import 'package:base64_tool/src/config/l10n/arb/app_localizations.dart';
import 'package:base64_tool/src/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:talker_flutter/talker_flutter.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'Test',
      theme: AppThemes.light,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations.supportedLocales.first,
      builder: (context, child) {
        return ResponsiveBreakpoints.builder(
          child: Builder(
            builder: (ctx) {
              return child!;
            },
          ),
          breakpoints: const [
            Breakpoint(start: 0, end: 450, name: MOBILE),
            Breakpoint(start: 451, end: 800, name: TABLET),
            Breakpoint(start: 801, end: 1920, name: DESKTOP),
            Breakpoint(start: 1921, end: double.infinity, name: '4K'),
          ],
        );
      },
    );
  }
}
