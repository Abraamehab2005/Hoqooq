import 'package:hoqooq/core/errors/auth_exception.dart';
import 'package:hoqooq/features/auth/domain/repos/auth_repo.dart';

class FakeAuthRepo implements AuthRepo {
  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    if (email == 'offline@test.com') {
      throw const AuthException(AuthError.network);
    }
    if (password != '123456') {
      throw const AuthException(AuthError.invalidCredentials);
    }
  }
}