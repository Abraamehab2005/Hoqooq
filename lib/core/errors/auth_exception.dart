enum AuthError { invalidCredentials, network, tooManyRequests, unknown }

class AuthException implements Exception {
  const AuthException(this.error);
  final AuthError error;
}
