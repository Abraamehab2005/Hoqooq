import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoqooq/core/routing/app_router.dart';
import 'package:hoqooq/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  Future<void> navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    context.go(AppRouter.kOnboardingView);
  }

  @override
  Widget build(BuildContext context) {
    return SplashViewBody();
  }
}
