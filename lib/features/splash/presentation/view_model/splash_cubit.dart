// splash_cubit.dart
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoqooq/core/services/cache_service.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this._cache) : super(const SplashInitial());

  final CacheService _cache;

  Future<void> decideDestination() async {
    await Future.delayed(const Duration(seconds: 3));

    if (!_cache.onboardingSeen) {
      emit(const SplashGoToOnboarding());
      return;
    }

    emit(_isUserLoggedIn() ? const SplashGoToHome() : const SplashGoToLogin());
  }

  // مؤقتًا لحد ما نربط Firebase، وبعدها:
  // FirebaseAuth.instance.currentUser != null
  bool _isUserLoggedIn() => false;
}