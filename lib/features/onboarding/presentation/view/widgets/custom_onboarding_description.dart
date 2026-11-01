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
    final h = MediaQuery.sizeOf(context).height;
    final isSmall = h < 700;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: isSmall ? 20 : 24,
          height: isSmall ? 20 : 24,
        ),
        SizedBox(width: isSmall ? 10 : 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.start,
                style: AppTextStyles.onboardingLawSourceChatTitle,
              ),
              const SizedBox(height: 4),
              Text(
                description,
                textAlign: TextAlign.start,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.onboardingLawSourceChatDescription,
              ),
            ],
          ),
        ),
      ],
    );
  }
}