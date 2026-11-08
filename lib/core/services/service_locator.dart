// core/services/service_locator.dart
import 'package:get_it/get_it.dart';
import 'package:hoqooq/features/auth/domain/repos/auth_repo.dart';
import 'package:hoqooq/features/auth/domain/repos/fake_auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hoqooq/core/services/cache_service.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  final prefs = await SharedPreferences.getInstance();

  getIt.registerSingleton<CacheService>(CacheService(prefs));
  getIt.registerLazySingleton<AuthRepo>(() => FakeAuthRepo());
}
