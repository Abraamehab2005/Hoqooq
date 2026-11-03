import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoqooq/core/services/cache_service.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this._cache) : super(const OnboardingInitial());

  final CacheService _cache;

  Future<void> completeOnboarding(OnboardingDestination destination) async {
    await _cache.setOnboardingSeen();
    emit(OnboardingCompleted(destination: destination));
  }
}