import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/core/utils/responsive_spacing.dart';

class CustomAuthTitle extends StatelessWidget {
  const CustomAuthTitle({
    super.key,
    required this.title,
    required this.subTitle,
    this.gap = 18,
  });
  final String title;
  final String subTitle;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.onboardingBody),
        SizedBox(height: context.gap(gap)),
        Text(subTitle, style: AppTextStyles.onboardingDescrpion),
      ],
    );
  }
}
