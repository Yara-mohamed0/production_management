import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:production_management/features/track_working_hours/ui/widgets/attendance_detail_row.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../core/shared_widgets/default_line.dart';
import 'production_information_row.dart';

class ProductionInformationCard extends StatelessWidget {
  const ProductionInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.lightGreen,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              productDetail: 'الاله',
              productName: 'الة انتاج الزبادي',
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الحالة',
                  style: AppFonts.font14W700ProductDetails,
                ),
                Row(
                  children: [
                    Container(
                      width: 100.0.w,
                      height: 15.0.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 70.0.w,
                          height: 15.0.h,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Text(
                  'تحتاج إلى صيانة',
                  style: AppFonts.font14W700ProductDetails,
                ),
                const Spacer(),
                const Icon(
                  Icons.check,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const ProductionInformationRow(
              productDetail: 'تدابير الامان والحماية',
              productName: '',
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                '• إجراء فحوصات دورية للآلة\n• صيانة الآلة بانتظام\n• التأكد من أن الآلة موصلة بأرضية جيدة لتجنب حدوث صدمات كهربائية.',
                style: AppFonts.font14W700Black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
