import 'package:flutter/material.dart';
import 'package:production_management/core/theming/styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../../../core/theming/colors.dart';

class GaugeWidget extends StatelessWidget {
  const GaugeWidget({super.key});

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
          Text('أداء النظام',style: AppFonts.font24W700Primary,),
          const SizedBox(height: 30,),
          SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                startAngle: 180,
                endAngle: 360,
                minimum: 1,
                maximum: 32,
                interval: 6,
                ranges: <GaugeRange>[
                  GaugeRange(
                    startValue: 1,
                    endValue: 10,
                    color: Colors.orangeAccent,
                    startWidth: 80,
                    endWidth: 80,
                  ),
                  GaugeRange(
                    startValue: 10,
                    endValue: 362,
                    color: Colors.lightGreen,
                    startWidth: 80,
                    endWidth: 80,
                  ),
                ],
                pointers: const <GaugePointer>[
                  NeedlePointer(
                    value: 10,
                    needleColor: Colors.white,
                    needleLength: 0.7,
                    needleStartWidth: 2,
                    needleEndWidth: 5,
                    knobStyle: KnobStyle(
                      color: Colors.white,
                      borderColor: Colors.white,
                      knobRadius: 0.2,
                    ),
                  )
                ],
                annotations:  <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Text(
                        'الزمن بالدقائق',
                        style:AppFonts.font20W700Grey,
                      ),
                    ),
                    positionFactor: 0.5,
                    angle: 15,
                  ),
                ],
                axisLabelStyle: const GaugeTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
                majorTickStyle: const MajorTickStyle(
                    length: 65, thickness: 2, color: Colors.teal),
                minorTickStyle: const MinorTickStyle(
                    length: 0.05, thickness: 1, color: Colors.teal),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
