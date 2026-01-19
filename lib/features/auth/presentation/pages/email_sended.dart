import 'package:base_app/features/auth/presentation/pages/login.dart';
import 'package:base_app/shared/constants/app_colors.dart';
import 'package:base_app/shared/widgets/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_text_styles.dart';

class EmailSentPage extends StatefulWidget {
  const EmailSentPage({super.key});

  static const String name = 'EmailSentPage';

  @override
  State<StatefulWidget> createState() => _StateEmailSentPage();
}

class _StateEmailSentPage extends State<EmailSentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [_buildHeader(context), _buildMainButton(context)],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('E-mail\nenviado!', style: AppTextStyles.h1),
        const SizedBox(height: 20),
        Text(
          'Cheque sua caixa de entrada e clique\nno link de confirmação',
          style: AppTextStyles.mediumNormal.copyWith(color: AppColors.gray1),
        ),
      ],
    );
  }

  Widget _buildMainButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: MainButton(
        text: 'Voltar para tela inicial',
        variant: ButtonVariant.primary,
        size: ButtonSize.big,
        isLoading: false,
        expand: false,
        enable: true,
        onPressed: () {
          context.pushReplacementNamed(LoginPage.name);
        },
      ),
    );
  }
}
