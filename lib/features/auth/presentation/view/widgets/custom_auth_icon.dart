import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/core/utils/responsive_spacing.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

class CustomAuthIcon extends StatelessWidget {
  const CustomAuthIcon({super.key});
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/splash_org.png",
            width: 48,
            height: 48,
            fit: BoxFit.contain,
          ),
          SizedBox(height: context.gap(8)),
          Text(
            l10n.appName,
            style: AppTextStyles.onboardingBody.copyWith(height: 1.3),
          ),
        ],
      ),
    );
  }
}
