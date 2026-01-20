import 'package:base_app/shared/constants/app_images.dart';
import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:base_app/shared/widgets/buttons/main_button.dart';
import 'package:flutter/material.dart';

class AppHeaderDialog extends StatelessWidget {
  const AppHeaderDialog({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: Column(
        children: [
          Row(children: [Text(userName, style: AppTextStyles.bigBold)]),
          MainButton(
            text: 'Perfil',
            prefixIcon: AppImages.userIconSVG,
            isLoading: false,
            expand: false,
            enable: true,
          ),
          MainButton(
            text: 'Configurações',
            prefixIcon: AppImages.settingsIconSVG,
            isLoading: false,
            expand: false,
            enable: true,
          ),
          MainButton(
            text: 'Sair',
            prefixIcon: AppImages.arrowLeftIconSVG,
            isLoading: false,
            expand: false,
            enable: true,
          ),
        ],
      ),
    );
  }
}
