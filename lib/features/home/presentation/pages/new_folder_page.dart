import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_images.dart';
import '../../../../shared/constants/app_text_styles.dart';
import '../../../../shared/widgets/buttons/main_button.dart';

class NewFolderPage extends StatefulWidget {
  const NewFolderPage({super.key});

  @override
  State<NewFolderPage> createState() => _NewFolderPageState();
}

class _NewFolderPageState extends State<NewFolderPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Widget _buildPage() {
    return Padding(padding: const EdgeInsets.all(8.0), child: Column());
  }

  Widget _buildReturnButton(BuildContext context) {
    return SizedBox(
      width: 85,
      child: MainButton(
        text: 'voltar',
        prefixIcon: AppImages.arrowLeftSVG,
        variant: ButtonVariant.gray,
        isLoading: false,
        expand: false,
        enable: true,
        onPressed: () {
          context.pop();
        },
      ),
    );
  }

  Widget _buildMainText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text('Dados do Folder', style: AppTextStyles.h1)],
    );
  }
}
