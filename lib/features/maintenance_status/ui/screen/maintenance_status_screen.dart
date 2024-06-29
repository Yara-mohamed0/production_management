import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:production_management/core/shared_widgets/header.dart';
import 'package:production_management/features/maintenance_status/logic/cubit/cubit.dart';
import 'package:production_management/features/maintenance_status/logic/cubit/state.dart';

import '../../../../core/shared_widgets/historical_data_chart.dart';
import '../../../../core/theming/styles.dart';
import '../../../home/ui/widgets/maintenance_schedule_listview.dart';
import '../widgets/break_downs_listview.dart';
import '../widgets/fault_recording.dart';
import '../widgets/maintenance_tasks.dart';
import '../widgets/production_information_listview.dart';

class MaintenanceStatusScreen extends StatelessWidget {
  const MaintenanceStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TaskCubit(),
      child: BlocConsumer<TaskCubit, TaskStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = TaskCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HomeHeader(),
                      const SizedBox(
                        height: 28,
                      ),
                      Text(
                        "معلومات الانتاج",
                        style: AppFonts.font20W700Primary,
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const ProductionInformationListview(),
                      const SizedBox(
                        height: 17,
                      ),
                      MaintenanceTasks(
                        cubit: cubit,
                        text: 'المهام المتعددة للصيانة',
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        'الصيانة الطارئة',
                        style: AppFonts.font20W700Primary,
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const BreakDownListview(),
                      const SizedBox(
                        height: 17,
                      ),
                      const CustomBarChart(
                        text: 'تحليلات الصيانة',
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Text(
                        'جدول الصيانة',
                        style: AppFonts.font20W700Primary,
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      const MaintenanceScheduleListview(),
                      const SizedBox(
                        height: 17,
                      ),
                      FaultRecording(
                        cubit: cubit,
                        text: 'تسجيل الأعطال',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
