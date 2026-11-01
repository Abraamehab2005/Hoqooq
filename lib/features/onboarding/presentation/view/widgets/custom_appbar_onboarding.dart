import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

class CustomAppbarOnboarding extends StatelessWidget {
  const CustomAppbarOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SizedBox(
      height: 48,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Text(
              l10n.onboardingAppBar,
              style: AppTextStyles.onboardingAppBar,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(l10n.appName, style: AppTextStyles.onboardingAppBar),
          ),
        ],
      ),
    );
  }
}
