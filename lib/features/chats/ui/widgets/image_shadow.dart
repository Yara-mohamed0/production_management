import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';

class ImageShadow extends StatelessWidget {
  const ImageShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 39.0.w,
      height: 39.0.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/images/user_image.png"),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            blurRadius: 6,
            offset: Offset(0, 4),
          )
        ],
      ),
    );
  }
}
