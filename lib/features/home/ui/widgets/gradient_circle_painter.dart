import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';

class StaticGradientCirclePainter extends CustomPainter {
  final Color startColor;
  final Color endColor;
  final double strokeWidth;
  final double timeValue;

  StaticGradientCirclePainter({
    required this.startColor,
    required this.endColor,
    required this.strokeWidth,
    required this.timeValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = size.center(Offset.zero);
    double radius = (size.width - strokeWidth) / 2;

    // Define the gradient
    Gradient gradient = LinearGradient(
      colors: [startColor, endColor],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );

    // Create a paint object with gradient
    Paint paint = Paint()
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..shader = gradient
          .createShader(Rect.fromCircle(center: center, radius: radius));

    // Draw the circle
    canvas.drawCircle(center, radius, paint);

    // Draw lines to simulate a clock face inside the gradient circle
    Paint linePaint = Paint()
      ..color = AppColors.clockColor
      ..strokeWidth = 2.0;

    double innerRadius = radius - strokeWidth / 2 - 10;
    double outerRadius = innerRadius + 10;

    for (int i = 0; i < 12; i++) {
      double lineAngle = (i / 12) * 2 * pi;
      Offset innerPosition = Offset(center.dx + innerRadius * cos(lineAngle),
          center.dy + innerRadius * sin(lineAngle));
      Offset outerPosition = Offset(center.dx + outerRadius * cos(lineAngle),
          center.dy + outerRadius * sin(lineAngle));

      canvas.drawLine(innerPosition, outerPosition, linePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}