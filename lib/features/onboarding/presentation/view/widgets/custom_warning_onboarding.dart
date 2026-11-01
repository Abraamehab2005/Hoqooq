import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

class CustomWarningOnboarding extends StatelessWidget {
  const CustomWarningOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE5E1DA)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/warning.png', width: 18, height: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              l10n.onboardingWarning,
              style: AppTextStyles.onboardingLawSourceChatDescription,
            ),
          ),
        ],
      ),
    );
  }
}