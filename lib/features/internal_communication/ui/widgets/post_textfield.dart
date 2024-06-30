
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class PostTextField extends StatelessWidget {
  const PostTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppFonts.font12W400LightGrey,
      maxLines: null,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 28.w,
            height: 28.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.lightGrey,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: const Icon(
              Icons.chat_outlined,
              size: 20,
              color: AppColors.blackColor,
            ),
          ),
        ),

        hintText: 'اكتب هنا.',
        hintStyle: AppFonts.font12W400LightGrey,
        fillColor: AppColors.searchBackgroundColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
