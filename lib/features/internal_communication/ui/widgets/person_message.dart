import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class PersonMessage extends StatelessWidget {
  const PersonMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0, right: 20),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                          color: AppColors.imageBackground,
                          borderRadius: BorderRadiusDirectional.only(
                            bottomStart: Radius.circular(20),
                            bottomEnd: Radius.circular(20),
                            topStart: Radius.circular(20),
                            topEnd: Radius.circular(3),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        child: Text(
                          'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ',
                          style: AppFonts.font12W600Grey,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 9,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_image.png'),
              radius: 31,
            ),
          ],
        ),
      ),
    );
  }
}
