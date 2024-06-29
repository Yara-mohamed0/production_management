import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../screen/add_employee.dart';

class AttendanceRow extends StatelessWidget {
  const AttendanceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "الحضور",
          style: AppFonts.font20W700Primary,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 42.0.w,
                height: 42.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.searchBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.delete_outline_outlined,
                  color: AppColors.textRed,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddEmployee()));
              },
              child: Container(
                width: 42.0.w,
                height: 42.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.add,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
