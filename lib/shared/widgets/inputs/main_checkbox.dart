import 'package:flutter/cupertino.dart';

import '../../constants/app_colors.dart';

class MainCheckbox extends StatefulWidget {
  const MainCheckbox({
    super.key,
    this.text,
    this.multiText,
    required this.enable,
    this.onChanged,
    this.initialValue,
  });

  final Text? text;
  final RichText? multiText;

  final bool enable;

  final Function(bool)? onChanged;

  final bool? initialValue;

  @override
  State<StatefulWidget> createState() => _StateMainCheckbox();
}

class _StateMainCheckbox extends State<MainCheckbox> {
  late bool isSelected = false;

  @override
  void initState() {
    if (widget.initialValue != null) {
      isSelected = widget.initialValue!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final showRichText = widget.text == null && widget.multiText != null;

    return Row(
      children: [
        _buildCheckbox(),
        const SizedBox(width: 6),
        _buildText(showRichText),
      ],
    );
  }

  Widget _buildCheckbox() {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });

        if (widget.onChanged != null) {
          widget.onChanged!(isSelected);
        }
      },
      child: Container(
        width: 18,
        height: 18,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: AppColors.gray1, width: 1),
        ),
        child: isSelected == true
            ? Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(2),
                ),
              )
            : null,
      ),
    );
  }

  Widget _buildText(bool showRichText) {
    return Container(
      child: showRichText
          ? widget.multiText
          : !showRichText
              ? widget.text
              : null,
    );
  }
}
