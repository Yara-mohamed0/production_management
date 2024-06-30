import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/shared_button.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class AttachmentRow extends StatelessWidget {
  const AttachmentRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset("assets/images/image.png"),
            const SizedBox(
              width: 5,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "صورة",
                style: AppFonts.font12W400LightGrey,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Image.asset("assets/images/video.png"),
            const SizedBox(
              width: 5,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "فيديو",
                style: AppFonts.font12W400LightGrey,
              ),
            ),
          ],
        ),
        Expanded(
          child: SharedButton(
            function: () {},
            color: AppColors.mainColor,
            isText: true,
            text: 'مشاركة',
            style: AppFonts.font16W700White,
            borderRadius: 6,
          ),
        )
      ],
    );
  }
}
