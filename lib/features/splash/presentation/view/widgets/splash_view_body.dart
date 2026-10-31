import 'package:flutter/material.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/features/splash/presentation/view/widgets/custom_line.dart';
import 'package:hoqooq/features/splash/presentation/view/widgets/custom_splash_app_title.dart';
import 'package:hoqooq/features/splash/presentation/view/widgets/custom_splash_body.dart';
import 'package:hoqooq/features/splash/presentation/view/widgets/custom_splash_footer.dart';
import 'package:hoqooq/features/splash/presentation/view/widgets/custom_splash_image.dart';
import 'package:hoqooq/features/splash/presentation/view/widgets/custom_splash_title.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.05),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(child: CustomLine(width: 24, height: 1)),
                  SizedBox(width: size.width * 0.025),
                  const CustomSplashAppTitle(),
                  SizedBox(width: size.width * 0.025),
                  const Flexible(child: CustomLine(width: 24, height: 1)),
                ],
              ),
              SizedBox(height: size.height * 0.09),
              CustomSplashImage(),
              SizedBox(height: size.height * 0.025),
              const CustomSplashTitle(),
              const SizedBox(height: 8),
              Text("Hoqooq", style: AppTextStyles.bodyEn),
              const SizedBox(height: 36),
              CustomSplashBody(),
              SizedBox(height: size.height * 0.08),
              const Flexible(child: CustomLine(width: 36, height: 2)),
              const SizedBox(height: 16),
              const CustomSplashFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
