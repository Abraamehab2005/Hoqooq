import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hoqooq/core/constants/app_colors.dart';
import 'package:hoqooq/core/routing/app_router.dart';
import 'package:hoqooq/core/theme/app_text_styles.dart';
import 'package:hoqooq/core/utils/responsive_spacing.dart';
import 'package:hoqooq/core/utils/validators.dart';
import 'package:hoqooq/core/widgets/custom_button_field.dart';
import 'package:hoqooq/core/widgets/custom_info_notice.dart';
import 'package:hoqooq/core/widgets/custom_text_field.dart';
import 'package:hoqooq/core/widgets/max_width_box.dart';
import 'package:hoqooq/features/auth/presentation/view/utils/auth_error_message.dart';
import 'package:hoqooq/features/auth/presentation/view/widgets/custom_auth_appbar.dart';
import 'package:hoqooq/features/auth/presentation/view/widgets/custom_auth_icon.dart';
import 'package:hoqooq/features/auth/presentation/view/widgets/custom_auth_title.dart';
import 'package:hoqooq/features/auth/presentation/view_model/login_cubit/login_cubit.dart';
import 'package:hoqooq/l10n/app_localizations.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    if (!_formKey.currentState!.validate()) return;
    context.read<LoginCubit>().login(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAuthAppbar(title: l10n.loginAppBar),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: MaxWidthBox(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CustomAuthIcon(),
                        SizedBox(height: context.gap(18)),
                        CustomAuthTitle(
                          title: l10n.loginTitle,
                          subTitle: l10n.loginSubtitle,
                        ),
                        SizedBox(height: context.gap(28)),

                        CustomTextField(
                          label: l10n.emailLabel,
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          textDirection: TextDirection.ltr,
                          validator: (v) => Validators.email(v, l10n),
                        ),
                        SizedBox(height: context.gap(20)),
                        CustomTextField(
                          label: l10n.passwordLabel,
                          controller: _passwordController,
                          obscureText: _obscurePassword,
                          textInputAction: TextInputAction.done,
                          textDirection: TextDirection.ltr,
                          validator: (v) => Validators.password(v, l10n),
                          suffixIcon: IconButton(
                            onPressed: () => setState(
                              () => _obscurePassword = !_obscurePassword,
                            ),
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 20,
                              color: AppColors.secondaryText,
                            ),
                          ),
                        ),
                        SizedBox(height: context.gap(20)),
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: TextButton(
                            onPressed: () {}, // TODO: شاشة نسيت كلمة المرور
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              l10n.forgotPassword,
                              style: AppTextStyles.onboardingLogin,
                            ),
                          ),
                        ),
                        SizedBox(height: context.gap(20)),

                        BlocConsumer<LoginCubit, LoginState>(
                          listener: (context, state) {
                            if (state is LoginSuccess) {
                              context.go(AppRouter.kHomeView);
                            } else if (state is LoginFailure) {
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                    content: Text(state.error.message(l10n)),
                                  ),
                                );
                            }
                          },
                          builder: (context, state) {
                            return CustomButtonField(
                              text: l10n.loginButton,
                              onPressed: _submit,
                              isLoading: state is LoginLoading,
                            );
                          },
                        ),
                        SizedBox(height: context.gap(28)),

                        Center(
                          child: TextButton(
                            onPressed: () {}, // TODO: شاشة التسجيل
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              l10n.noAccountRegister,
                              style: AppTextStyles.onboardingLogin.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: context.gap(16)),
                        CustomInfoNotice(
                          text: l10n.loginPrivacyNotice,
                          icon: Icons.lock_outline,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
