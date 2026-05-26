import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../dialogs/app_header_dialog.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    required this.title,
    this.backgroundColor = Colors.blue,
    this.actions = const [],
  });

  final String title;
  final Color backgroundColor;
  final List<Widget> actions;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyles.h5.copyWith(color: AppColors.white),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AppHeaderDialog(userName: 'teste');
                  },
                );
              },
              child: Icon(Icons.list, size: 50, color: AppColors.white),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.primary,
      actions: actions,
      centerTitle: true,
    );
  }
}
