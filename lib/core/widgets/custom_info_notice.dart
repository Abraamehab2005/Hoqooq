import 'package:flutter/material.dart';
import 'package:hoqooq/core/constants/app_colors.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';

class CustomInfoNotice extends StatelessWidget {
  const CustomInfoNotice({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: AppColors.accent),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: AppTextStyles.onboardingLawSourceChatDescription,
            ),
          ),
        ],
      ),
    );
  }
}