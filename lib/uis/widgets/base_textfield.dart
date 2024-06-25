import 'package:cyneox_test/helpers/constants/constants.dart';
import 'package:flutter/material.dart';

class BaseTextFormField extends StatelessWidget {
  const BaseTextFormField({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.maxLines,
    this.inputTextColor,
    this.enabledBorderColor = primaryColor,
    this.focusedBorderColor = primaryColor,
    this.enabled = true,
    this.onChanged,
    this.fontSize,
    this.hintText,
    this.hintTextStyle,
    this.enabledBorder,
    this.focusedBorder,
    this.backgroundColor,
  });

  final TextEditingController controller;
  final Widget? prefixIcon;
  final int? maxLines;
  final Color? inputTextColor;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final bool enabled;
  final void Function(String)? onChanged;
  final double? fontSize;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: fontSize,
        color: inputTextColor ?? Colors.white,
      ),
      controller: controller,
      maxLines: maxLines,
      enabled: enabled,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: backgroundColor != null,
        fillColor: backgroundColor,
        hintText: hintText,
        hintStyle: hintTextStyle,
        errorMaxLines: 3,
        prefixIcon: prefixIcon,
        isDense: true,
        enabledBorder: enabledBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(color: enabledBorderColor),
            ),
        focusedBorder: focusedBorder ??
            UnderlineInputBorder(
              borderSide: BorderSide(color: focusedBorderColor),
            ),
        contentPadding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
        errorStyle: const TextStyle(color: Colors.red),
      ),
    );
  }
}
