import 'package:flutter/material.dart';

import '../../../../shared/widgets/base/app_footer.dart';
import '../../../../shared/widgets/base/app_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String name = 'HomePage';

  @override
  State<StatefulWidget> createState() => _StateHomePage();
}

class _StateHomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: 'teste'),
      bottomNavigationBar: BaseAppNavigationFooter(),
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Column(children: []);
  }
}
