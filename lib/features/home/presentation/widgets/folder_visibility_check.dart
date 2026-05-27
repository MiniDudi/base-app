import 'package:base_app/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FolderVisibilityCheck extends StatefulWidget {
  const FolderVisibilityCheck({super.key});

  @override
  State<StatefulWidget> createState() => _StateFolderVisibilityCheck();
}

class _StateFolderVisibilityCheck extends State<FolderVisibilityCheck> {
  late bool isPrivateChecked = false;
  late bool isPublicChecked = false;

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
    return GestureDetector(
      onTap: () {
        if (isPrivate) {
          setState(() {
            isPrivateChecked = true;
            isPublicChecked = false;
          });
        } else {
          setState(() {
            isPrivateChecked = false;
            isPublicChecked = true;
          });
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: !isPrivateChecked && !isPublicChecked
              ? AppColors.white
              : AppColors.primary,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(isPrivate ? Icons.lock : Icons.person),
            Text(isPrivate ? 'Privado' : 'Público'),
          ],
        ),
      ),
    );
  }
}
