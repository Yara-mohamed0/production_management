import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:production_management/core/theming/styles.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

// ignore: must_be_immutable
class WorkHoursDetailRow extends StatelessWidget {
  WorkHoursDetailRow(
      {super.key,
      required this.productDetail,
      this.productName='',
      this.isText = true});

  final String productDetail;
  final String productName;
  bool isText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          productDetail,
          style: AppFonts.font14W700ProductDetails,
        ),
        isText?
        Text(
          productName,
          style: AppFonts.font14W700Black,
        ): SizedBox(
          width: 150.w, // Adjust width as needed
          height: 140.h, // Adjust height as needed
          child: SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                startAngle: 180,
                endAngle: 360,
                minimum: 0,
                maximum: 120,
                interval: 20,
                ranges: <GaugeRange>[

                  GaugeRange(
                    startValue: 0,
                    endValue: 30,
                    color: const Color(0xff399694),
                    startWidth: 30,
                    endWidth: 30,
                  ),
                  GaugeRange(
                    startValue: 30,
                    endValue: 120,
                    color: const Color(0xffE9E199),
                    startWidth: 30,
                    endWidth: 30,
                  ),
                ],
                pointers: const <GaugePointer>[
                  NeedlePointer(
                    value: 30,
                    needleColor: Colors.red,
                    needleLength: 0.7,
                    needleStartWidth: 1,
                    needleEndWidth: 3,
                    knobStyle: KnobStyle(
                      color: Colors.red,
                      borderColor: Colors.red,
                      knobRadius: 0.1,
                    ),
                  )
                ],
                labelsPosition: ElementsPosition.outside,
                axisLabelStyle: const GaugeTextStyle(
                  fontSize: 14, // Adjust font size as needed
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
                majorTickStyle: const MajorTickStyle(
                    length: 0.01, // Adjust tick length as needed
                    thickness: 0.04,
                    color: Colors.teal),
                minorTickStyle: const MinorTickStyle(
                    length: 0.05, // Adjust minor tick length as needed
                    thickness: 1,
                    color: Colors.teal),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
