import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoqooq/core/constants/app_colors.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';

class CustomAuthAppbar extends StatelessWidget {
  const CustomAuthAppbar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.3,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 64),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              SizedBox(
                width: 44,
                height: 44,
                child: context.canPop()
                    ? IconButton(
                        onPressed: () => context.pop(),
                        icon: const Icon(Icons.chevron_right, size: 22),
                        color: AppColors.primary,
                      )
                    : null,
              ),
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.onboardingAppBar,
                ),
              ),
              const SizedBox(width: 44),
            ],
          ),
        ),
      ),
    );
  }
}