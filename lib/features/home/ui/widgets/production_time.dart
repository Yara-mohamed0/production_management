import 'package:flutter/material.dart';
import 'dart:math';

import '../../../../core/theming/colors.dart';import '../../../../core/theming/styles.dart';
import 'circle_painter.dart';
import 'gradient_circle_painter.dart';

class ProductionTimeWidget extends StatefulWidget {
  const ProductionTimeWidget({super.key});

  @override
  State<ProductionTimeWidget> createState() => _ProductionTimeWidgetState();
}

class _ProductionTimeWidgetState extends State<ProductionTimeWidget> {
  double _productionPercentage = 40;
  double _selectedProductionTime = 1;
  Offset _dragPosition = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mainColor),
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightGreen,
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('الدورات الزمنية للإنتاج', style: AppFonts.font20W700Primary),
          const SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: CustomPaint(
                  painter: StaticGradientCirclePainter(
                    startColor: Colors.green,
                    endColor: Colors.blue,
                    strokeWidth: 30,
                    timeValue: _selectedProductionTime,
                  ),
                ),
              ),
              GestureDetector(
                onPanStart: (details) => _updateProductionTime(details.localPosition),
                onPanUpdate: (details) => _updateProductionTime(details.localPosition),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(
                    child: CustomPaint(
                      size: const Size(200, 200),
                      painter: CirclePainter(
                        _dragPosition,
                        radius: 85,
                        timeValue: _selectedProductionTime,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 90,
                child: Text(
                  '${_selectedProductionTime == 0.0 ? 12 : _selectedProductionTime.toStringAsFixed(0)}h',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('%${_productionPercentage.toStringAsFixed(0)}', style: const TextStyle(fontSize: 16)),
              const Text('%100', style: TextStyle(fontSize: 16)),
            ],
          ),
          Slider(
            value: _productionPercentage,
            min: 0,
            max: 100,
            onChanged: (double value) {
              setState(() {
                _productionPercentage = value;
              });
            },
          ),
        ],
      ),
    );
  }

  void _updateProductionTime(Offset position) {
    RenderBox box = context.findRenderObject() as RenderBox;
    Offset center = box.size.center(Offset.zero);
    double angle = atan2(position.dy - center.dy, position.dx - center.dx);

    if (angle < 0) angle += 2 * pi;

    double hours = (angle / (2 * pi) * 12 + 3) % 12;

    if (hours == 0.0) {
      hours = 12;
    }

    setState(() {
      _selectedProductionTime = hours;
      _dragPosition = position;
    });
  }
}