import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../core/shared_widgets/default_line.dart';
import 'work_hours_detail_row.dart';

class WorkHoursCard extends StatelessWidget {
  const WorkHoursCard({super.key});

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
            WorkHoursDetailRow(
              isText: true,
              productDetail: 'اسم الموظف',
              productName: 'محمد أحمد',
            ),
            const SizedBox(
              height: 24,
            ),
            WorkHoursDetailRow(
              isText: false,
              productDetail: 'مخطط الساعات',
              // productName: 'حاضر',
            ),
          ],
        ),
      ),
    );
  }
}
