
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import 'attachments_row.dart';
import 'post_textfield.dart';

class WritePostContainer extends StatelessWidget {
  const WritePostContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.w,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.blackColor),
        borderRadius: BorderRadius.circular(12),
        color: AppColors.whiteColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 27, vertical: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "مشاركة وثائق",
              style: AppFonts.font16W700LightGrey,
            ),
            const SizedBox(
              height: 16,
            ),
            const PostTextField(),
            const SizedBox(
              height: 30,
            ),
            const AttachmentRow()
          ],
        ),
      ),
    );
  }
}