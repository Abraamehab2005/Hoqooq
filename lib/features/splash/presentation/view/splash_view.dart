import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hoqooq/core/routing/app_router.dart';
import 'package:hoqooq/core/services/cache_service.dart';
import 'package:hoqooq/core/services/service_locator.dart';
import 'package:hoqooq/features/splash/presentation/view/widgets/splash_view_body.dart';
import 'package:hoqooq/features/splash/presentation/view_model/splash_cubit.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit(getIt<CacheService>())..decideDestination(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          switch (state) {
            case SplashGoToOnboarding():
              context.go(AppRouter.kOnboardingView);
            case SplashGoToLogin():
              // مؤقتًا لحد ما نعمل شاشة الـ login
              context.go(AppRouter.kHomeView);
            case SplashGoToHome():
              context.go(AppRouter.kHomeView);
            case SplashInitial():
              break;
          }
        },
        child: const SplashViewBody(),
      ),
    );
  }
}