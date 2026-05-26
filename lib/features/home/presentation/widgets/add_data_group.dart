import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../shared/constants/app_colors.dart';

enum AddDataType { big, small }

class AddDataGroup extends StatelessWidget {
  const AddDataGroup({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: AppColors.gray2,
            child: Icon(Icons.add_rounded, size: 150, color: AppColors.gray1),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: 215,
            child: Text(
              'Adicione seu conjunto de dados',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppTextStyles.h6.copyWith(color: AppColors.gray1),
            ),
          ),
        ],
      ),
    );
  }
}
