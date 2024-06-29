import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:production_management/features/maintenance_status/logic/cubit/cubit.dart';
import 'package:production_management/features/maintenance_status/logic/cubit/state.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class MaintenanceTasks extends StatelessWidget {
  MaintenanceTasks({super.key, required this.cubit,required this.text});

  final TaskCubit cubit;
  final TextEditingController _taskController = TextEditingController();
final String text;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppFonts.font20W700Primary,
          ),
          BlocBuilder<TaskCubit, TaskStates>(
            builder: (context, state) {
              if (state is TaskUpdated) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cubit.tasks?.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Checkbox(
                        value: cubit.tasks?[index]['completed'],
                        onChanged: (bool? value) {
                          cubit.toggleTaskCompletion(index);
                        },
                      ),
                      title: Text(
                        cubit.tasks?[index]['name'],
                        style: AppFonts.font14W700GreyColor,
                      ),
                    );
                  },
                );
              }
              return Container();
            },
          ),    SizedBox(
            height: 6.h,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _taskController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.whiteColor,
                    hintText: 'اضافة عملية صيانة',
                    hintStyle: AppFonts.font14W700ProductDetails,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 16.0), // Adjust the vertical padding here
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_taskController.text.isNotEmpty) {
                    cubit.addTask(_taskController.text);
                    _taskController.clear();
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(60.0.w, 40.h),
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'إضافة',
                  style: AppFonts.font14W700White,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
