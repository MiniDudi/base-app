import 'package:base_app/shared/constants/app_colors.dart';
import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:base_app/shared/widgets/buttons/main_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/inputs/main_checkbox.dart';
import '../../../../shared/widgets/inputs/main_text_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _StateRegisterPage();
}

class _StateRegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTopTextGroup(context),
          const SizedBox(height: 29),
          _buildInputGroup(context),
          const SizedBox(height: 20),
          _buildCheckbox(context),
          const SizedBox(height: 20),
          _buildMainButton(context),
        ],
      ),
    );
  }

  Widget _buildTopTextGroup(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cadastre-se!',
          style: AppTextStyles.h1,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Crie uma conta para começar\na usar nossos serviços',
          style: AppTextStyles.mediumNormal.copyWith(color: AppColors.gray1),
        ),
      ],
    );
  }

  Widget _buildInputGroup(BuildContext context) {
    return Column(
      children: [
        MainTextInput(
          title: 'Nome',
          hint: 'Insira seu nome completo',
          enabled: true,
          readOnly: false,
          isRequired: true,
          isPassword: false,
        ),
        const SizedBox(height: 26),
        MainTextInput(
          title: 'E-mail',
          hint: 'nome@email.com',
          enabled: true,
          readOnly: false,
          isRequired: true,
          isPassword: false,
        ),
        const SizedBox(height: 26),
        MainTextInput(
          title: 'Senha',
          hint: 'Crie uma senha',
          enabled: true,
          readOnly: false,
          isRequired: true,
          isPassword: true,
        ),
        const SizedBox(height: 12),
        MainTextInput(
          hint: 'Insira sua senha novamente',
          enabled: true,
          readOnly: false,
          isRequired: true,
          isPassword: true,
        ),
      ],
    );
  }

  Widget _buildCheckbox(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: MainCheckbox(
        enable: true,
        multiText: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Eu li e concordo com os ',
                style: AppTextStyles.smallNormal,
              ),
              TextSpan(
                text: 'Termos e Condições\n',
                style: AppTextStyles.smallNormal.copyWith(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w500,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
              TextSpan(
                text: 'e as ',
                style: AppTextStyles.smallNormal,
              ),
              TextSpan(
                text: 'Políticas de Privacidades.',
                style: AppTextStyles.smallNormal.copyWith(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w500,
                ),
                recognizer: TapGestureRecognizer()..onTap = () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: MainButton(
        text: 'Cadastrar',
        isLoading: false,
        expand: false,
        enable: true,
      ),
    );
  }
}
