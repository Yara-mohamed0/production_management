import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class CircularChart extends StatelessWidget {
  const CircularChart({super.key});

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
          Text('عدد الوحدات خلال الساعة', style: AppFonts.font20W700Primary),
          const SizedBox(height: 20),
          SfCircularChart(
            palette: const [
              Color(0xff04BFDA),
              Color(0xffFFA84A),
              Color(0xffFB67CA),
            ],
            series: <CircularSeries>[
              RadialBarSeries<ChartData, String>(
                dataSource: <ChartData>[
                  ChartData('A', 100),
                  ChartData('B', 150),
                  ChartData('C', 200),
                ],
                cornerStyle: CornerStyle.bothCurve,
                xValueMapper: (ChartData data, _) => data.category,
                yValueMapper: (ChartData data, _) => data.value,
                trackColor: Colors.grey.shade200,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 12.0.w,
                        height: 12.0.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.whiteColor,
                          border:
                              Border.all(color: const Color(0xff04BFDA), width: 2),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.lightGrey,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'بن',
                        style: AppFonts.font16W700Grey,
                      ),
                    ],
                  ),
                  Text(
                    '60 وحدة',
                    style: AppFonts.font16W700Grey,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 12.0.w,
                        height: 12.0.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.whiteColor,
                          border: Border.all(
                            color: const Color(0xffFFA84A),
                            width: 2,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.lightGrey,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'تمر',
                        style: AppFonts.font16W700Grey,
                      ),
                    ],
                  ),
                  Text(
                    '75 وحدة',
                    style: AppFonts.font16W700Grey,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 12.0.w,
                        height: 12.0.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.whiteColor,
                          border: Border.all(
                            color: const Color(0xffFB67CA),
                            width: 2,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.lightGrey,
                              blurRadius: 2,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        'عسل',
                        style: AppFonts.font16W700Grey,
                      ),
                    ],
                  ),
                  Text(
                    '80 وحدة',
                    style: AppFonts.font16W700Grey,
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

class ChartData {
  final String category;
  final double value;

  ChartData(this.category, this.value);
}
