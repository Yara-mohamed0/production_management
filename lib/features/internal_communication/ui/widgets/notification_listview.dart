import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'notification_card.dart';

class NotificationListview extends StatelessWidget {
  const NotificationListview({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          separatorBuilder: (context, index) => SizedBox(
            height: 28.h,
          ),
          itemBuilder: (context, index) => const NotificationCard(),
          shrinkWrap: true,
        );
      },
    );
  }
}
