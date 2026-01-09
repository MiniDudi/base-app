import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/widget_utils/main_button_utils.dart';

enum ButtonVariant { primary, secondary, gray }

enum ButtonSize { big, small }

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.isLoading,
    required this.expand,
    required this.enable,
    this.suffixIcon,
    this.prefixIcon,
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

  final String? suffixIcon;
  final String? prefixIcon;

  @override
  Widget build(BuildContext context) {
    final buttonColor = MainButtonUtils.getButtonBackgroundColor(variant);
    final textColor = MainButtonUtils.getButtonTextColor(variant);
    final iconColor = MainButtonUtils.getButtonIconColor(variant);

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
            return buttonColor;
          }),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          elevation: WidgetStateProperty.resolveWith<double>(
            (states) => states.contains(WidgetState.hovered) ? 3 : 0,
          ),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(horizontal: 13),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefixIcon != null) ...[
              SvgPicture.asset(
                prefixIcon!,
                colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
              ),
              const SizedBox(width: 5),
            ],
            Text(
              text,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.smallBold.copyWith(color: textColor),
            ),
            if (suffixIcon != null) ...[
              const SizedBox(width: 5),
              SvgPicture.asset(
                suffixIcon!,
                colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
