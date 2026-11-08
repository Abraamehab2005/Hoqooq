import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hoqooq/core/services/service_locator.dart';
import 'package:hoqooq/features/auth/domain/repos/auth_repo.dart';
import 'package:hoqooq/features/auth/presentation/view/widgets/login_view_body.dart';
import 'package:hoqooq/features/auth/presentation/view_model/login_cubit/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(getIt<AuthRepo>()),
      child: const LoginViewBody(),
    );
  }
}
