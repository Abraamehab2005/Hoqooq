import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/l10n/app_localizations.dart';


class CustomSplashFooter extends StatelessWidget {
  const CustomSplashFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Text(l10n.splashFooter, style: AppTextStyles.bodyEn);
  }
}
