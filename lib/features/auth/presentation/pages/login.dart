import 'package:base_app/features/auth/presentation/pages/forgot_password.dart';
import 'package:base_app/shared/constants/app_colors.dart';
import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_images.dart';
import '../../../../shared/widgets/buttons/main_button.dart';
import '../../../../shared/widgets/inputs/main_text_input.dart';
import '../../../home/presentation/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String name = 'LoginPage';

  @override
  State<StatefulWidget> createState() => _StateLoginPage();
}

class _StateLoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 110),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildTopImage(context),
            const SizedBox(height: 40),
            _buildMainText(context),
            const SizedBox(height: 40),
            _buildInputGroup(context),
            const SizedBox(height: 8),
            _buildForgetPasswordText(context),
            const SizedBox(height: 20),
            _buildLoginButton(context),
            const SizedBox(height: 5),
            _buildRegisterLink(context),
            const SizedBox(height: 104),
            _buildSocialLogin(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTopImage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [CircleAvatar(radius: 80, backgroundColor: AppColors.gray1)],
    );
  }

  Widget _buildMainText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text('Bem-vindo!', style: AppTextStyles.h4)],
    );
  }

  Widget _buildInputGroup(BuildContext context) {
    return Column(
      children: [
        MainTextInput(
          title: 'Login',
          hint: 'Insira seu nome de usuário ou e-mail',
          enabled: true,
          readOnly: false,
          isRequired: true,
          isPassword: false,
        ),
        const SizedBox(height: 15),
        MainTextInput(
          title: 'Senha',
          hint: 'Insira sua senha de acesso',
          enabled: true,
          readOnly: false,
          isRequired: true,
          isPassword: true,
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildForgetPasswordText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.goNamed(ForgotPasswordPage.name);
            },
            child: Text('Esqueceu a senha?', style: AppTextStyles.smallNormal),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: MainButton(
        text: 'Login',
        isLoading: false,
        expand: false,
        enable: true,
        onPressed: () {
          context.goNamed(HomePage.name);
        },
      ),
    );
  }

  Widget _buildRegisterLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Não possui uma conta? ',
                style: AppTextStyles.smallNormal,
              ),
              TextSpan(
                text: 'Registre-se agora',
                style: AppTextStyles.smallNormal.copyWith(
                  color: AppColors.blue,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.goNamed('register');
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSocialLogin(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Ou logar com', style: AppTextStyles.smallNormal),
        const SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(AppImages.facebookLogo),
              ),
            ),
            const SizedBox(width: 21),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(AppImages.googleLogo),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
