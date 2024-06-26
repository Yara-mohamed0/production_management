import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PercentChart extends StatelessWidget {
  const PercentChart({super.key});

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
        children: [
          Text(
            'نسبة انجاز الاهداف',
            style: AppFonts.font20W700Primary,
          ),
          const SizedBox(
            height: 30,
          ),
          SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                startAngle: 180,
                endAngle: 0,
                minimum: 0,
                maximum: 100,
                showLabels: false,
                showTicks: false,
                axisLineStyle: const AxisLineStyle(
                  thickness: 0.2,
                  cornerStyle: CornerStyle.bothCurve,
                  thicknessUnit: GaugeSizeUnit.factor,
                  gradient: SweepGradient(
                    colors: [Color(0xFF8A4AF3), Color(0xFF3CD0FF)],
                    stops: [0.25, 0.75],
                  ),
                ),
                pointers: const <GaugePointer>[
                  NeedlePointer(
                    value: 50,
                    needleColor: Colors.red,
                    needleLength: 0.9,
                    needleStartWidth: 1,
                    needleEndWidth: 5,
                    knobStyle: KnobStyle(
                      color: Colors.red,
                      borderColor: Colors.red,
                      knobRadius: 0.05,
                    ),
                  ),
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Text(
                      'نسبة الانجاز 50%',
                      style: AppFonts.font24W700Blue,
                    ),
                    angle: 90,
                    positionFactor: 0.5,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
