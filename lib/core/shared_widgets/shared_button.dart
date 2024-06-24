import 'package:flutter/material.dart';

import '../theming/colors.dart';

class SharedButton extends StatelessWidget {
  const SharedButton(
      {super.key,
      required this.function,
      this.text,
      required this.color,
      this.textColor = Colors.white,
      this.borderColor = AppColors.mainColor,
      this.fontSize = 18,
      this.width = double.infinity,
      this.height = 50,
      this.fontWeight = FontWeight.w400,
      this.borderRadius = 27,
      this.icon,
      this.isText = true});

  final VoidCallback function;
  final String? text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final double fontSize;
  final double width;
  final double height;
  final FontWeight fontWeight;
  final double borderRadius;
  final IconData? icon;
  final bool isText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor),
        color: color,
      ),
      child: MaterialButton(
        padding: EdgeInsets.zero,
        onPressed: function,
        child: isText
            ? Text(
                text!,
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              )
            : Icon(
                icon,
                color: textColor,
              ),
      ),
    );
  }
}
