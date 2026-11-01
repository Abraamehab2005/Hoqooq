import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/core/widgets/custom_button_field.dart';
import 'package:hoqooq/features/onboarding/presentation/view/widgets/custom_appbar_onboarding.dart';
import 'package:hoqooq/features/onboarding/presentation/view/widgets/custom_icon_onboarding.dart';
import 'package:hoqooq/features/onboarding/presentation/view/widgets/custom_onboarding_body.dart';
import 'package:hoqooq/features/onboarding/presentation/view/widgets/custom_onboarding_description.dart';
import 'package:hoqooq/features/onboarding/presentation/view/widgets/custom_warning_onboarding.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  static const _divider = Color(0xFFE5E1DA);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F6F2),
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppbarOnboarding(), // خليه SizedBox(height: 64)
            Expanded(
              child: LayoutBuilder(
                builder: (context, c) => FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: c.maxWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CustomIconOnboarding(),
                          const SizedBox(height: 8),
                          const CustomOnboardingBody(),
                          const SizedBox(height: 24),
                          CustomOnboardingDescription(
                            image: 'assets/images/law_icon.png',
                            title: l10n.onboardingLawTitle,
                            description: l10n.onboardingLawDescription,
                          ),
                          const SizedBox(height: 16),
                          const Divider(height: 1, color: _divider),
                          const SizedBox(height: 16),
                          CustomOnboardingDescription(
                            image: 'assets/images/book-open.png',
                            title: l10n.onboardingSourceTitle,
                            description: l10n.onboardingSourceDescription,
                          ),
                          const SizedBox(height: 16),
                          const Divider(height: 1, color: _divider),
                          const SizedBox(height: 16),
                          CustomOnboardingDescription(
                            image: 'assets/images/ask_icon.png',
                            title: l10n.onboardingChatTitle,
                            description: l10n.onboardingChatDescription,
                          ),
                          const SizedBox(height: 24),
                          const CustomWarningOnboarding(),
                          const SizedBox(height: 24),
                          CustomButtonField(
                            text: l10n.getStarted,
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_back, size: 18),
                          ),
                          const SizedBox(height: 16),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              l10n.onboardingLogin,
                              style: AppTextStyles.onboardingLogin,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}