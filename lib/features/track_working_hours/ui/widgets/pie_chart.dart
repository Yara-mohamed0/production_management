import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  List<ChartData> chartData = [
    ChartData('Category A', 45, const Color(0xff04BFDA)),
    ChartData('Category B', 45, const Color(0xffFB67CA)),
    ChartData('Category C', 10, const Color(0xffFFA84A)),
  ];

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
            'الوقت المستغرق المهام',
            style: AppFonts.font20W700Primary,
          ),
          const SizedBox(
            height: 30,
          ),
          SfCircularChart(
            series: <CircularSeries>[
              PieSeries<ChartData, String>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.category,
                yValueMapper: (ChartData data, _) => data.value,
                pointColorMapper: (ChartData data, _) => data.color,
                dataLabelSettings: DataLabelSettings(
                  isVisible: true,
                  // labelPosition: ChartDataLabelPosition.outside,
                  textStyle: AppFonts.font14W700White,
                  // Customizing the data label content
                  builder: (dynamic data, dynamic point, dynamic series,
                      int pointIndex, int seriesIndex) {
                    return Text(
                      '${point.y.toStringAsFixed(0)}%',
                      style: const TextStyle(color: Colors.white),
                    );
                  },
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    width: 12.0.w,
                    height: 12.0.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff04BFDA),
                      boxShadow: [
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
                    'حاضر',
                    style: AppFonts.font16W700Grey,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 12.0.w,
                    height: 12.0.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFA84A),
                      boxShadow: [
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
                    'غائب',
                    style: AppFonts.font16W700Grey,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 12.0.w,
                    height: 12.0.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                     color:  Color(0xffFB67CA),
                      boxShadow: [
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
                    'اجازة',
                    style: AppFonts.font16W700Grey,
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.category, this.value, this.color);

  final String category;
  final double value;
  final Color color;
}
