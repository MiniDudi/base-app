import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

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
      title: Text(title),
      backgroundColor: AppColors.primary,
      actions: actions,
      centerTitle: true,
    );
  }
}
