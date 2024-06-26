import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../core/shared_widgets/default_line.dart';
import 'product_detail_row.dart';

class CurrentStateCard extends StatelessWidget {
  const CurrentStateCard({super.key});

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
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const DefaultLine(),
            const SizedBox(
              height: 20,
            ),
            const ProductDetailsRow(
              productDetail: 'الاله',
              productName: 'الة انتاج الزبادي',
            ),
            const SizedBox(
              height: 24,
            ),
            const ProductDetailsRow(
              productDetail: 'وقت التشغيل',
              productName: '05:30 ص',
            ),
            const SizedBox(
              height: 20,
            ),
            const ProductDetailsRow(
              productDetail: 'وقت التوقف',
              productName: '06:30 ص',
            ),
            const SizedBox(
              height: 24,
            ),
            const ProductDetailsRow(
              productDetail: 'الصيانة',
              productName: '11/02/2019',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
