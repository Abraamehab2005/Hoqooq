part of 'onboarding_cubit.dart';

sealed class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object?> get props => [];
}

final class OnboardingInitial extends OnboardingState {
  const OnboardingInitial();
}

final class OnboardingCompleted extends OnboardingState {
  const OnboardingCompleted({required this.destination});

  final OnboardingDestination destination;

  @override
  List<Object?> get props => [destination];
}

enum OnboardingDestination { register, login }