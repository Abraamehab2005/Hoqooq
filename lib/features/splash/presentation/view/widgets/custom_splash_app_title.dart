import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

class CustomSplashAppTitle extends StatelessWidget {
  const CustomSplashAppTitle({super.key});

  @override
  Widget build(BuildContext context) {
        final l10n = AppLocalizations.of(context)!;
    return Text(
      l10n.splashAppTitle,
      style: AppTextStyles.splashCaption,
    );
  }
}
