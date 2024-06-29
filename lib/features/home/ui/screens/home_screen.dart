import 'package:flutter/material.dart';
import 'package:production_management/core/theming/styles.dart';

import '../widgets/current_state_listview.dart';
import '../widgets/gauge_widget.dart';
import '../widgets/historical_data_chart.dart';
import '../widgets/home_header.dart';
import '../widgets/percent_chart.dart';
import '../widgets/production_details_listview.dart';
import '../widgets/production_time.dart';
import '../widgets/quality_control.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeHeader(),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  "تقارير الانتاج",
                  style: AppFonts.font20W700Primary,
                ),
                const SizedBox(
                  height: 28,
                ),
                const CustomBarChart(),
                const SizedBox(
                  height: 16,
                ),
                const ProductionTimeWidget(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "معلومات الانتاج",
                  style: AppFonts.font20W700Primary,
                ),
                const SizedBox(
                  height: 17,
                ),
                const ProductionDetailsListview(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "الحالة الراهنة",
                  style: AppFonts.font20W700Primary,
                ),
                const SizedBox(
                  height: 17,
                ),
                const CurrentStateListview(),
                const SizedBox(
                  height: 16,
                ),
                const GaugeWidget(),
                const SizedBox(
                  height: 16,
                ),
                const QualityControl(),
                const SizedBox(
                  height: 16,
                ),
                const PercentChart()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


