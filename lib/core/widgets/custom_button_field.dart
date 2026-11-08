import 'package:flutter/material.dart';
import 'package:hoqooq/core/constants/app_colors.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';

class CustomButtonField extends StatelessWidget {
  const CustomButtonField({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });
  final String text;
  final VoidCallback onPressed;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.surface,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text, style: AppTextStyles.customButton),
            if (icon != null) ...[const SizedBox(width: 10), icon!],
          ],
        ),
      ),
    );
  }
}
