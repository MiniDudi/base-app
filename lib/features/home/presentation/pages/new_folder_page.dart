import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_images.dart';
import '../../../../shared/constants/app_text_styles.dart';
import '../../../../shared/widgets/buttons/main_button.dart';
import '../../../../shared/widgets/inputs/main_text_input.dart';

class NewFolderPage extends StatefulWidget {
  const NewFolderPage({super.key});

  static const String name = 'NewFolderPage';

  @override
  State<NewFolderPage> createState() => _NewFolderPageState();
}

class _NewFolderPageState extends State<NewFolderPage> {
  final TextEditingController _folderName = TextEditingController();
  final TextEditingController _folderCategory = TextEditingController();
  final TextEditingController _folderDescription = TextEditingController();

  //  FOLDER USERS MUST BE A LIST OF USER IDs OR USER MODELS
  //  final TextEditingController _folderUsers = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildPage(context));
  }

  Widget _buildPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 55),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildReturnButton(context),
          const SizedBox(height: 29),
          _buildMainText(context),
          _buildFirstInputs(context),
          _buildVisibilityOptions(context),
          _buildLastInputs(context),
          const SizedBox(height: 166),
          _buildMainButton(context),
        ],
      ),
    );
  }

  Widget _buildReturnButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
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
        ),
      ],
    );
  }

  Widget _buildMainText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text('Dados do Folder', style: AppTextStyles.h1)],
    );
  }

  Widget _buildFirstInputs(BuildContext context) {
    return Container();
  }

  Widget _buildVisibilityOptions(BuildContext context) {
    return Container();
  }

  Widget _buildLastInputs(BuildContext context) {
    return Column(
      children: [
        MainTextInput(
          title: 'Permissão para usuários (Opcional)',
          hint: 'Selecione multiplos usuários',
          enabled: true,
          readOnly: false,
          isRequired: true,
          isPassword: false,
        ),
        MainTextInput(
          title: 'Descrição',
          hint: 'Descrição do Folder',
          enabled: true,
          readOnly: false,
          isRequired: true,
          isPassword: false,
        ),
      ],
    );
  }

  Widget _buildMainButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MainButton(
          text: 'Configurações',
          prefixIcon: AppImages.settingsIconSVG,
          variant: ButtonVariant.primary,
          isLoading: false,
          expand: false,
          enable: true,
        ),
      ],
    );
  }
}
