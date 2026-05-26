import 'package:flutter/material.dart';

import '../../../../shared/widgets/base/app_footer.dart';
import '../../../../shared/widgets/base/app_header.dart';
import '../widgets/add_data_group.dart';
import '../widgets/folder_data_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String name = 'HomePage';

  @override
  State<StatefulWidget> createState() => _StateHomePage();
}

class _StateHomePage extends State<HomePage> {
  final folderQty = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: 'Teste'),
      bottomNavigationBar: BaseAppNavigationFooter(),
      body: _buildPageWithoutData(context),
    );
  }

  Widget _buildPageWithoutData(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 136),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (folderQty == 0) ...[
            AddDataGroup(onTap: () {}),
          ] else ...[
            FolderDataCard(),
            AddDataGroup(onTap: () {}),
          ],
        ],
      ),
    );
  }
}
