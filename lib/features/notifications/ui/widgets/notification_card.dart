import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      child: Container(
        width: 344.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.whiteColor,
          boxShadow: const [
            BoxShadow(
              color: AppColors.lightGrey,
              blurRadius: 5,
              offset: Offset(1, 4),
            )
          ],
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 30.0, top: 17, bottom: 5, left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Expanded(
                  child: Text(
                    "احمد جمال",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppFonts.font16W700Primary,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "منذ دقيقتين",
                  style: AppFonts.font12W400Blue,
                ),
              ]),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر',
                maxLines: 5,
                style: AppFonts.font14W400Grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
