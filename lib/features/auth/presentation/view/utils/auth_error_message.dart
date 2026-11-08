import 'package:hoqooq/core/errors/auth_exception.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

extension AuthErrorMessage on AuthError {
  String message(AppLocalizations l10n) => switch (this) {
    AuthError.invalidCredentials => l10n.errorInvalidCredentials,
    AuthError.network => l10n.errorNetwork,
    AuthError.tooManyRequests => l10n.errorTooManyRequests,
    AuthError.unknown => l10n.errorUnknown,
  };
}