import 'package:flutter/material.dart';

import '../../../../shared/widgets/base/app_footer.dart';

class FolderPage extends StatefulWidget {
  const FolderPage({super.key});

  @override
  State<FolderPage> createState() => _FolderPageState();
}

class _FolderPageState extends State<FolderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BaseAppNavigationFooter(),
      body: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(children: []),
    );
  }
}
