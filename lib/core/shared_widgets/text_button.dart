import 'package:flutter/material.dart';

Widget textButton({
  required String text,
  required VoidCallback onpress,
  required TextStyle textStyle,
}) =>
    Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onpress,
        child: Text(
          text,
          style: textStyle,

        ),
      ),
    );
