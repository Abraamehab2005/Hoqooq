import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hoqooq/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:hoqooq/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kOnboardingView = '/onboardingView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView(); // by defualt
        },
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingView(); 
        },
      )
    ],
  );
}
