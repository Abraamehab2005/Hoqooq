import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

class CustomWarningOnboarding extends StatelessWidget {
  const CustomWarningOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/warning.png", width: 18, height: 18),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.onboardingWarning,
                  textAlign: TextAlign.right,
                  style: AppTextStyles.onboardingLawSourceChatDescription,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
