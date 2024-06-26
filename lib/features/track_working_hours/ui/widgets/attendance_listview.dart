import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'attendance_card.dart';

class AttendanceListview extends StatelessWidget {
  const AttendanceListview({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          separatorBuilder: (context, index) => SizedBox(
            height: 4.h,
          ),
          itemBuilder: (context, index) => const AttendanceCard(),
          shrinkWrap: true,
        );
      },
    );
  }
}
