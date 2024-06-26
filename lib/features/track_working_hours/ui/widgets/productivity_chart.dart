import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ProductivityChart extends StatelessWidget {
  // ignore: library_private_types_in_public_api
  final List<_ChartData> data = [
    _ChartData('8 ساعات', 250),
    _ChartData('7 ساعات', 350),
    _ChartData('6 ساعات', 200),
  ];

  ProductivityChart({super.key});

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
          Text('تأثير ساعات العمل علي الانتاجية', style: AppFonts.font20W700Primary),
          const SizedBox(height: 20),
          SfCartesianChart(
            primaryXAxis: const CategoryAxis(
              majorGridLines: MajorGridLines(width: 0),
              // Remove vertical grid lines
              axisLine: AxisLine(width: 0), // Remove X axis line
            ),
            primaryYAxis: const NumericAxis(
              labelFormat: '{value} وحدة',
              minimum: 100,
              maximum: 400,
              interval: 50,
              majorGridLines: MajorGridLines(width: 0),
              // Remove horizontal grid lines
              opposedPosition: true,
              // Position y-axis on the right
              axisLine: AxisLine(width: 0), // Remove Y axis line
            ),
            series: <CartesianSeries>[
              SplineAreaSeries<_ChartData, String>(
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                gradient: const LinearGradient(
                  colors: [Color(0xFF8A4AF3), Color(0xFF3CD0FF)],
                  stops: [0.25, 0.75],
                ),
                markerSettings: const MarkerSettings(
                  isVisible: false,
                  shape: DataMarkerType.circle,
                  borderColor: Colors.white,
                  borderWidth: 2,
                ),
                dataLabelSettings: const DataLabelSettings(
                  isVisible: false,
                  labelAlignment: ChartDataLabelAlignment.middle,
                  textStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}