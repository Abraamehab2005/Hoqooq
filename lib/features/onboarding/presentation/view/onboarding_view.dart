import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hoqooq/core/routing/app_router.dart';
import 'package:hoqooq/core/services/cache_service.dart';
import 'package:hoqooq/core/services/service_locator.dart';
import 'package:hoqooq/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';
import 'package:hoqooq/features/onboarding/presentation/view_model/onboarding_cubit.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(getIt<CacheService>()),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingCompleted) {
            switch (state.destination) {
              case OnboardingDestination.register:
              context.go(AppRouter.kLoginView);
              case OnboardingDestination.login:
              // will change
              context.go(AppRouter.kLoginView);
            }
          }
        },
        child: OnboardingViewBody(),
      ),
    );
  }
}
