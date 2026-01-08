import 'package:base_app/shared/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class MainTextInput extends StatefulWidget {
  const MainTextInput({
    super.key,
    this.onTap,
    this.title,
    this.onChanged,
    this.validator,
    this.controller,
    this.keyboardType,
    required this.hint,
    required this.enabled,
    required this.readOnly,
    required this.isRequired,
    required this.isPassword,
  });

  final String hint;
  final String? title;

  final bool enabled;
  final bool readOnly;
  final bool isRequired;
  final bool isPassword;

  final TextInputType? keyboardType;

  final Function(String)? onChanged;
  final Future<void> Function()? onTap;
  final String? Function(String?)? validator;

  final TextEditingController? controller;

  @override
  State<StatefulWidget> createState() => _StateMainTextInput();
}

class _StateMainTextInput extends State<MainTextInput> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Text(
            widget.title!,
            style: AppTextStyles.mediumNormal,
          ),
        ],
        FormField<String>(
          validator: widget.validator ??
              (value) {
                if (widget.isRequired && widget.enabled) {
                  if (widget.controller?.text.trim().isEmpty ?? true) {
                    return 'field is required';
                  }
                }
                return null;
              },
          builder: (field) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: TextFormField(
                    controller: widget.controller,
                    readOnly: widget.readOnly,
                    enabled: widget.enabled,
                    keyboardType: widget.keyboardType,
                    // ignore: avoid_bool_literals_in_conditional_expressions
                    obscureText: widget.isPassword ? _obscurePassword : false,
                    onTap: widget.onTap,
                    textAlignVertical: TextAlignVertical.center,
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                    onChanged: (value) {
                      field.didChange(value);
                      widget.onChanged?.call(value);
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      errorStyle: const TextStyle(height: 0, fontSize: 0),
                      hintText:
                          widget.isRequired ? '${widget.hint}*' : widget.hint,
                      hintStyle: TextStyle(
                        color: AppColors.gray1,
                        fontFamily: 'Geist',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: Colors.transparent,
                      suffixIcon: widget.isPassword
                          ? IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 20,
                              ),
                              onPressed: () => setState(() {
                                _obscurePassword = !_obscurePassword;
                              }),
                            )
                          : null,
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                        minHeight: 0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: AppColors.gray1,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                if (field.errorText != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 4),
                    child: Text(
                      field.errorText!,
                      style: const TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
              ],
            );
          },
        )
      ],
    );
  }
}
