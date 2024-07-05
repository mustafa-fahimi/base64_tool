import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_name => 'Base64 Tool';

  @override
  String get encode => 'Encode';

  @override
  String get decode => 'Decode';

  @override
  String get encode_hint => 'Enter text to convert...';
}
