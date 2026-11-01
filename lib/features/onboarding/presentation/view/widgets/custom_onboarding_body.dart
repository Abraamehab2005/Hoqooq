import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

class CustomOnboardingBody extends StatelessWidget {
  const CustomOnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        Text(l10n.appName, style: AppTextStyles.onboardingBody),
        const SizedBox(height: 22),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            l10n.onboardingTitle,
            style: AppTextStyles.onboardingBody,
          ),
        ),
        const SizedBox(height: 22),
        Text(
          l10n.onboardingDescrption,
          style: AppTextStyles.onboardingDescrpion,
        ),
      ],
    );
  }
}
