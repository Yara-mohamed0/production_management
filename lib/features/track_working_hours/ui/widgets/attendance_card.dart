import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:production_management/features/track_working_hours/ui/widgets/attendance_detail_row.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../core/shared_widgets/default_line.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.lightGreen,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 38.0.w,
                  height: 38.0.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.mainColor,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.lightGrey,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "ID",
                      style: AppFonts.font14W700LightGreen,
                    ),
                  ),
                ),
                SizedBox(width: 21.w),
                Expanded(
                  child: Text(
                    "54875",
                    style: AppFonts.font14W700Black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check_box_outline_blank_rounded,
                    color: AppColors.onboardingGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const DefaultLine(),
            const SizedBox(
              height: 20,
            ),
            const AttendanceDetailsRow(
              productDetail: 'اسم الموظف',
              productName: 'محمد أحمد',
            ),
            const SizedBox(
              height: 24,
            ),
            const AttendanceDetailsRow(
              productDetail: 'سجل الحضور',
              productName: 'حاضر',
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_outline,
                    color: AppColors.textRed,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: AppColors.clockColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
