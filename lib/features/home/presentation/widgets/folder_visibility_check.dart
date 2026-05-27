import 'package:base_app/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FolderVisibilityCheck extends StatelessWidget {
  const FolderVisibilityCheck({super.key});

  final bool isPrivateChecked = false;
  final bool isPublicChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildCheckCard(context, false, true),
        _buildCheckCard(context, true, false),
      ],
    );
  }

  Widget _buildCheckCard(BuildContext context, bool isPrivate, bool isPublic) {
    return Container(
      color: !isPrivateChecked && !isPublicChecked
          ? AppColors.white
          : AppColors.primary,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(isPrivate ? Icons.lock : Icons.person),
          Text(isPrivate ? 'Privado' : 'Público'),
        ],
      ),
    );
  }
}
