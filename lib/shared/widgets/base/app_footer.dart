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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          iconSize: 35,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Center(child: SvgPicture.asset(AppImages.homeIconSVG)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Center(child: SvgPicture.asset(AppImages.messageIconSVG)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Center(child: SvgPicture.asset(AppImages.profileIconSVG)),
              label: '',
            ),
          ],
          backgroundColor: AppColors.primary,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.white.withOpacity(0.7),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(size: 35),
          unselectedIconTheme: IconThemeData(size: 35),
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
