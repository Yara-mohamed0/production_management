import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class DefaultLine extends StatelessWidget {
  const DefaultLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.h,
      width: double.infinity,
      color: AppColors.borderColor,
    );
  }
}
