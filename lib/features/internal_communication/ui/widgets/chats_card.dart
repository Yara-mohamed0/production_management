import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import '../screens/chat_screen.dart';
import 'image_shadow.dart';

class ChatsCard extends StatelessWidget {
  const ChatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ChatScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Row(
          children: [
            const ImageShadow(),
             SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Expanded(
                      child: Text(
                        "احمد جمال",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppFonts.font16W700GreyColor,
                      ),
                    ),
                     SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      "10.19 ص",
                      style: AppFonts.font12W400Black,
                    ),
                  ]),
                   SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(end: 20),
                    child: Text(
                      "هناك حقيقة مثبتة منذ زمن طويل وهي هناك حقيقة مثبتة منذ زمن طويل وهي",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.font12W400LightGrey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
