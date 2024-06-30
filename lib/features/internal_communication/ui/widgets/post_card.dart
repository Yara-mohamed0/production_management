import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../chats/ui/widgets/image_shadow.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

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
          borderRadius: BorderRadius.circular(12),
          color: AppColors.postBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 30.0, top: 17, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                const ImageShadow(),
                SizedBox(
                  width: 10.w,
                ),
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
                PopupMenuButton<String>(
                  icon: const Icon(FontAwesomeIcons.ellipsisVertical),
                  color: AppColors.whiteColor,
                  shadowColor: AppColors.imageBackground,
                  surfaceTintColor: AppColors.whiteColor,
                  onSelected: (value) {
                    switch (value) {
                      case 'delete':
                        // Add your delete chat functionality here
                        break;
                      case 'block':
                        // Add your block user functionality here
                        break;
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        value: 'delete',
                        child: Center(
                          child: Text(
                            'إلغاء التثبيت',
                            style: AppFonts.font16W700RedColor,
                          ),
                        ),
                      ),
                      PopupMenuItem(
                        value: 'block',
                        child: Center(
                          child: Text(
                            'إخفاء',
                            style: AppFonts.font16W700GreyColor,
                          ),
                        ),
                      ),
                    ];
                  },
                )
              ]),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 45, vertical: 10),
                child: Text(
                  " هناك حقيقة مثبتة منذ زمن طويل وهي",
                  maxLines: 5,
                  // overflow: TextOverflow.ellipsis,
                  style: AppFonts.font14W400Grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
