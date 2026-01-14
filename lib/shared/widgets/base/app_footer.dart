import 'package:base_app/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../constants/app_text_styles.dart';

class BaseAppNavigationFooter extends StatefulWidget {
  const BaseAppNavigationFooter({super.key});

  @override
  State<StatefulWidget> createState() => _StateBaseAppNavigationFooter();
}

class _StateBaseAppNavigationFooter extends State<BaseAppNavigationFooter> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: AppTextStyles.footerText),
    Text('Index 1: Messages', style: AppTextStyles.footerText),
    Text('Index 2: Profile', style: AppTextStyles.footerText),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 97,
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
          backgroundColor: AppColors.primary,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.white.withOpacity(0.7),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
