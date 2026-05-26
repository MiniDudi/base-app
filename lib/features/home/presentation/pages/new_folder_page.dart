import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/constants/app_images.dart';
import '../../../../shared/constants/app_text_styles.dart';
import '../../../../shared/widgets/buttons/main_button.dart';
import '../../../../shared/widgets/inputs/main_text_input.dart';

class NewFolderPage extends StatefulWidget {
  const NewFolderPage({super.key});

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
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildReturnButton(context),
          _buildMainText(context),
          _buildFirstInputs(context),
          _buildVisibilityOptions(context),
          _buildLastInputs(context),
        ],
      ),
    );
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
      children: [
        MainButton(
          text: 'Configurações',
          prefixIcon: AppImages.settingsIconSVG,
          variant: ButtonVariant.white,
          isLoading: false,
          expand: false,
          enable: true,
        ),
      ],
    );
  }
}
