import 'package:material_ui/material_ui.dart';
import 'package:flutter_project_template_arch/app/localizations/app_localizations.dart';

extension LocalizationX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
