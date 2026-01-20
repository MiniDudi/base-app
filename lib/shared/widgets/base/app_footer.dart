import 'package:base_app/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/app_images.dart';

class BaseAppNavigationFooter extends StatefulWidget {
  const BaseAppNavigationFooter({super.key});

  @override
  State<StatefulWidget> createState() => _StateBaseAppNavigationFooter();
}

class _StateBaseAppNavigationFooter extends State<BaseAppNavigationFooter> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _icon(String asset) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SvgPicture.asset(asset, fit: BoxFit.contain),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: _icon(AppImages.homeIconSVG),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _icon(AppImages.messageIconSVG),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _icon(AppImages.profileIconSVG),
            label: '',
          ),
        ],
        backgroundColor: AppColors.primary,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.white.withOpacity(0.7),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
