import 'package:base_app/features/auth/presentation/pages/email_sended.dart';
import 'package:base_app/shared/constants/app_colors.dart';
import 'package:base_app/shared/widgets/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_images.dart';
import '../../../../shared/constants/app_text_styles.dart';
import '../../../../shared/widgets/inputs/main_text_input.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  static const String name = 'ForgotPasswordPage';

  @override
  State<StatefulWidget> createState() => _StateForgotPasswordPage();
}

class _StateForgotPasswordPage extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 55),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildReturnButton(context),
          const SizedBox(height: 139),
          _buildMainText(context),
          const SizedBox(height: 29),
          _buildInput(context),
          const SizedBox(height: 65),
          _buildMainButton(context),
        ],
      ),
    );
  }

  Widget _buildReturnButton(BuildContext context) {
    return SizedBox(
      width: 85,
      child: MainButton(
        text: 'voltar',
        prefixIcon: AppImages.arrowLeftSVG,
        variant: ButtonVariant.gray,
        isLoading: false,
        expand: false,
        enable: true,
        onPressed: () {
          context.pop();
        },
      ),
    );
  }

  Widget _buildMainText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('E-mail de confirmação', style: AppTextStyles.h1),
        const SizedBox(height: 20),
        Text(
          'Insira seu endereço de e-mail e enviaremos um\nlink de confirmação na sua caixa de entrada',
          style: AppTextStyles.mediumNormal.copyWith(color: AppColors.gray1),
        ),
      ],
    );
  }

  Widget _buildInput(BuildContext context) {
    return MainTextInput(
      title: 'E-mail',
      hint: 'nome@email.com',
      enabled: true,
      readOnly: false,
      isRequired: true,
      isPassword: false,
    );
  }

  Widget _buildMainButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: MainButton(
        text: 'Enviar',
        isLoading: false,
        expand: false,
        enable: true,
        onPressed: () {
          context.goNamed(EmailSentPage.name);
        },
      ),
    );
  }
}
