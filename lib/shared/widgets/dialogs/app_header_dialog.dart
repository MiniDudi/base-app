import 'package:base_app/shared/constants/app_colors.dart';
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 211,
        width: 207,
        color: AppColors.primary,
        child: Column(
          children: [
            SizedBox(height: 16),
            Text(
              userName,
              style: AppTextStyles.bigBold.copyWith(color: AppColors.white),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 191,
              child: MainButton(
                text: 'Detalhes do perfil',
                prefixIcon: AppImages.userIconSVG,
                variant: ButtonVariant.white,
                isLoading: false,
                expand: false,
                enable: true,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 191,
              child: MainButton(
                text: 'Configurações',
                prefixIcon: AppImages.settingsIconSVG,
                variant: ButtonVariant.white,
                isLoading: false,
                expand: false,
                enable: true,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 191,
              child: MainButton(
                text: 'Sair',
                prefixIcon: AppImages.arrowLeftIconSVG,
                variant: ButtonVariant.white,
                isLoading: false,
                expand: false,
                enable: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
