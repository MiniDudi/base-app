import 'package:base_app/shared/constants/app_colors.dart';
import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/buttons/main_button.dart';
import '../../../../shared/widgets/inputs/main_text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _StateLoginPage();
}

class _StateLoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildTopImage(context),
        _buildMainText(context),
        _buildInputGroup(context),
        _buildForgetPasswordText(context),
        _buildLoginButton(context),
        _buildRegisterLink(context),
        _buildSocialLogin(context),
      ],
    );
  }

  Widget _buildTopImage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: AppColors.gray1,
        ),
      ],
    );
  }

  Widget _buildMainText(BuildContext context) {
    return Row(
      children: [Text('Bem-vindo!')],
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
      ],
    );
  }

  Widget _buildForgetPasswordText(BuildContext context) {
    return Row(
      children: [Text('Esqueceu a senha?')],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return MainButton(
      text: 'Login',
      isLoading: false,
      expand: true,
      enable: true,
      onPressed: () {},
    );
  }

  Widget _buildRegisterLink(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Não possui uma conta? ',
                style: AppTextStyles.mediumNormal,
              ),
              TextSpan(
                text: 'Registre-se agora',
                style: AppTextStyles.mediumNormal.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSocialLogin(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text('Ou logar com')],
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.gray1,
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: AppColors.gray1,
            )
          ],
        )
      ],
    );
  }
}
