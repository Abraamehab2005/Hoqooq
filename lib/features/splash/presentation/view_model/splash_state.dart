// splash_state.dart
part of 'splash_cubit.dart';

sealed class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object?> get props => [];
}

final class SplashInitial extends SplashState {
  const SplashInitial();
}

final class SplashGoToOnboarding extends SplashState {
  const SplashGoToOnboarding();
}

final class SplashGoToLogin extends SplashState {
  const SplashGoToLogin();
}

final class SplashGoToHome extends SplashState {
  const SplashGoToHome();
}