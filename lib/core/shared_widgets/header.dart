import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.view_headline_sharp),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "محمد احمد عبدالفتاح",
                  style: AppFonts.font12W700HomeNameColor,
                ),
                Text(
                  "أدمن",
                  style: AppFonts.font12W500HomeNameColor,
                ),
              ],
            ),
            const SizedBox(
              width: 16,
            ),
            Container(
              width: 46.0.w,
              height: 46.0.h,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage("assets/images/user_image.png"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lightGrey,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
