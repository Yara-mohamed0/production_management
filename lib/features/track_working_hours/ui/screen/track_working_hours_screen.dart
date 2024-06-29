import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/header.dart';
import '../widgets/attendance_listview.dart';
import '../widgets/attendance_row.dart';
import '../widgets/circular_chart.dart';
import '../widgets/pie_chart.dart';
import '../widgets/productivity_chart.dart';
import '../widgets/time_taking.dart';
import '../widgets/work_hours_listview.dart';

class TrackWorkingHoursScreen extends StatelessWidget {
  const TrackWorkingHoursScreen({super.key});

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
                const AttendanceRow(),
                const SizedBox(
                  height: 16,
                ),
                const AttendanceListview(),
                const SizedBox(
                  height: 16,
                ),
                ProductivityChart(),
                const SizedBox(
                  height: 16,
                ),
                const WorkHoursListview(),
                const SizedBox(
                  height: 16,
                ),
                const CircularChart(),
                const SizedBox(
                  height: 16,
                ),
                const TimeTaking(),
                const SizedBox(
                  height: 16,
                ),
                const PieChartWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
