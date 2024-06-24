import 'package:flutter/material.dart';

import '../theming/colors.dart';

class SharedButton extends StatelessWidget {
  const SharedButton({
    super.key,
    required this.function,
    this.text,
    required this.color,
    this.textColor = Colors.white,
    this.borderColor = AppColors.mainColor,
    this.width = double.infinity,
    this.height = 50,
    this.borderRadius = 27,
    this.icon,
    this.isText = true,
    this.style = const TextStyle(),
  });

  final VoidCallback function;
  final String? text;
  final Color color;
  final Color textColor;
  final Color borderColor;

  final double width;
  final double height;
  final double borderRadius;
  final IconData? icon;
  final bool isText;
  final TextStyle style;

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
                style: style,
              )
            : Icon(
                icon,
                color: textColor,
              ),
      ),
    );
  }
}
