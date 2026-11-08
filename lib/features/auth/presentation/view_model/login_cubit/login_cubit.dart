import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoqooq/core/errors/auth_exception.dart';
import 'package:hoqooq/features/auth/domain/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(const LoginInitial());

  final AuthRepo _authRepo;

  Future<void> login({required String email, required String password}) async {
    emit(const LoginLoading());
    try {
      await _authRepo.signIn(email: email, password: password);
      if (isClosed) return;
      emit(const LoginSuccess());
    } on AuthException catch (e) {
      if (isClosed) return;
      emit(LoginFailure(e.error));
    } catch (_) {
      if (isClosed) return;
      emit(const LoginFailure(AuthError.unknown));
    }
  }
}