import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:production_management/core/theming/colors.dart';
import 'package:production_management/core/theming/styles.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('البيانات التاريخية', style: AppFonts.font20W700Primary),
          const SizedBox(height: 16),
          SizedBox(
            height: 438,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                barTouchData: BarTouchData(
                  enabled: false,
                ),
                titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return Text(
                                '5/10/2020',
                                style: AppFonts.font12W700ChartDetailsColor,
                              );
                            case 1:
                              return Text(
                                '5/10/2020',
                                style: AppFonts.font12W700ChartDetailsColor,
                              );
                            case 2:
                              return Text(
                                '5/10/2020',
                                style: AppFonts.font12W700ChartDetailsColor,
                              );
                            case 3:
                              return Text(
                                '5/10/2020',
                                style: AppFonts.font12W700ChartDetailsColor,
                              );
                            case 4:
                              return Text(
                                '5/10/2020',
                                style: AppFonts.font12W700ChartDetailsColor,
                              );
                            default:
                              return const Text('');
                          }
                        },
                        reservedSize: 30,
                        // margin: 8,
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            '5:30 ص',
                            style: AppFonts.font12W700ChartDetailsColor,
                          );
                        },
                        reservedSize: 30,
                        // margin: 8,
                      ),
                    )),
                borderData: FlBorderData(
                  show: false,
                ),
                gridData: const FlGridData(
                  show: false,
                ),
                barGroups: [
                  BarChartGroupData(
                    x: 0,
                    barRods: [
                      BarChartRodData(
                        toY: 3,
                        color: AppColors.chartBarColor,
                        width: 20,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 1,
                    barRods: [
                      BarChartRodData(
                        toY: 5,
                        color: AppColors.chartBarColor,
                        width: 20,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 2,
                    barRods: [
                      BarChartRodData(
                        toY: 2,
                        color: AppColors.chartBarColor,
                        width: 20,
                      ),
                    ],
                  ),
                  BarChartGroupData(
                    x: 3,
                    barRods: [
                      BarChartRodData(
                        toY: 4,
                        color: AppColors.chartBarColor,
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
