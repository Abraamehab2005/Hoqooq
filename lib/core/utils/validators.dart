import 'package:hoqooq/l10n/app_localizations.dart';

abstract class Validators {
  static String? email(String? value, AppLocalizations l10n) {
    final v = value?.trim() ?? '';
    if (v.isEmpty) return l10n.emailRequired;
    final isValid = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(v);
    return isValid ? null : l10n.emailInvalid;
  }

  static String? password(String? value, AppLocalizations l10n) {
    final v = value ?? '';
    if (v.isEmpty) return l10n.passwordRequired;
    return v.length < 6 ? l10n.passwordTooShort : null;
  }
}