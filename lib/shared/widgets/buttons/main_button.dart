import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

enum ButtonVariant { primary, secondary }

enum ButtonSize { big, small }

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.isLoading,
    required this.expand,
    required this.enable,
    this.onPressed,
    this.variant = ButtonVariant.primary,
    this.size = ButtonSize.big,
  });

  final String text;

  final ButtonVariant variant;
  final ButtonSize size;

  final VoidCallback? onPressed;

  final bool isLoading;
  final bool expand;
  final bool enable;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      width: expand ? double.infinity : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            // if (states.contains(WidgetState.pressed)) {
            //   return buttonHoverColor;
            // } else if (states.contains(WidgetState.hovered)) {
            //   return buttonHoverColor;
            // }
            // if (!enable) {
            //   return disableButtonColor;
            // }
            return AppColors.primary;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          elevation: WidgetStateProperty.resolveWith<double>(
            (states) => states.contains(WidgetState.hovered) ? 3 : 0,
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyles.smallBold.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
