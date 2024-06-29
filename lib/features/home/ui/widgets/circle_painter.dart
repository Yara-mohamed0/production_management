import 'dart:math';

import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final Offset dragPosition;
  final double radius;
  double timeValue;

  CirclePainter(this.dragPosition,
      {required this.radius, required this.timeValue});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = size.center(Offset.zero);

    // Calculate angle based on time value
    double angle = (timeValue / 12 * 2 * pi - pi / 2);

    // Calculate handle position on the circle
    Offset handle = Offset(
      center.dx + radius * cos(angle),
      center.dy + radius * sin(angle),
    );

    canvas.drawCircle(
      handle,
      10,
      Paint()..color = Colors.white,
    );
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate.dragPosition != dragPosition ||
        oldDelegate.radius != radius;
  }
}