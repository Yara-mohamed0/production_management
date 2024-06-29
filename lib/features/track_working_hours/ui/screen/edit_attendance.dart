import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../core/shared_widgets/shared_button.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/cubit.dart';
import '../../logic/cubit/state.dart';
import 'track_working_hours_screen.dart';

// ignore: must_be_immutable
class EditAttendance extends StatelessWidget {
  EditAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TrackHoursCubit(),
      child: BlocConsumer<TrackHoursCubit, TrackHoursStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = TrackHoursCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "اضافه موظف جديد",
                style: AppFonts.font20W700Primary,
              ),
              leading: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.whiteColor,
                      border: Border.all(color: AppColors.mainColor),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'اسم الموظف',
                              style: AppFonts.font14W700Primary,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            DefaultTextFormField(
                              initialValue: 'محمد احمد',

                              borderSide: BorderSide.none,
                              filled: true,
                              isPassword: false,
                              color: AppColors.whiteColor,
                              style: AppFonts.font14W700ProductDetails,
                              validator: (value) {
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(
                              'سجل الحضور',
                              style: AppFonts.font14W700Primary,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 43.h,
                              decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: DropdownButton<String>(
                                value: cubit.attendanceRecord,
                                isExpanded: true,
                                icon: const Icon(Icons.arrow_drop_down),
                                underline: const SizedBox(),
                                hint: Text(
                                  'حاضر',
                                  style: AppFonts.font16W700BlackColor,
                                ),
                                items: <String>[
                                  'حاضر',
                                  'غائب'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value,
                                        style: value == 'غائب'
                                            ? AppFonts.font16W700RedColor
                                            : AppFonts.font16W700BlackColor),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  cubit.toggleAttendanceRecord(value!);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SharedButton(
                      function: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TrackWorkingHoursScreen()));
                      },
                      color: AppColors.mainColor,
                      text: "حفظ",
                      style: AppFonts.font16W700White,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    SharedButton(
                      function: () {
                        Navigator.pop(context);
                      },
                      color: AppColors.whiteColor,
                      text: "الغاء",
                      style: AppFonts.font16W700Primary,
                      borderColor: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
