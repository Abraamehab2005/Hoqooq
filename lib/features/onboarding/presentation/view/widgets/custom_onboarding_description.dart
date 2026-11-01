import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';

class CustomOnboardingDescription extends StatelessWidget {
  const CustomOnboardingDescription({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(image, width: 24, height: 24),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: AppTextStyles.onboardingLawSourceChatTitle,
              ),
              const SizedBox(height: 3),
              Text(
                description,
                style: AppTextStyles.onboardingLawSourceChatDescription,
              ),
            ],
          ),
        ),
      ],
    );
  }
}