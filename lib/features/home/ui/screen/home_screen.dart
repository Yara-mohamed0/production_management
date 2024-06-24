import 'package:flutter/material.dart';
import 'package:production_management/core/theming/styles.dart';

import '../widgets/historical_data_chart.dart';
import '../widgets/home_header.dart';

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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
