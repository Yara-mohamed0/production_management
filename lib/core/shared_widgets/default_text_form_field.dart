import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField(
      {super.key,
        this.labelText,
        this.prefixIcon,
        this.controller,
        required this.isPassword,
        required this.color,
        this.suffixIcon,
        this.validator,
         this.readOnly=false,
        required this.style,
        this.labelStyle,
        required this.borderSide,
        this.filled,
        this.initialValue,
        this.hintText,
        this.hintStyle,
        this.minLines,
        this.maxLines,
        this.suffixPressed,
        this.suffixColor,
        this.type});

  final String? labelText;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final void Function()? suffixPressed;
  final TextEditingController? controller;
  final bool isPassword;
  final Color color;
  final Color? suffixColor;
  final String? Function(String?)? validator;
  final bool readOnly;
  final TextStyle style;
  final TextStyle? labelStyle;
  final BorderSide borderSide;
  final bool? filled;
  final String? initialValue;
  final String? hintText;
  final TextStyle? hintStyle;
  final int? minLines;
  final int? maxLines;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      initialValue: initialValue,
      readOnly: readOnly,
      style: style,
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
        filled: filled,
        fillColor: color,
        contentPadding:
        const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon != null
            ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffixIcon,
            color: suffixColor,
          ),
        )
            : null,
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: labelStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: borderSide,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: borderSide,
        ),
      ),
    );
  }
}
