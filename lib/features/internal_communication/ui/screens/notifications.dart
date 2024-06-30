import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/app_bar.dart';
import '../../../../core/theming/colors.dart';
import '../widgets/notification_listview.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DefaultAppBar(
        iconColor: AppColors.mainColor,
        name: "الاشعارات",
        isCenter: true,
        backgroundColor: AppColors.appBackgroundColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              children: [
                NotificationListview(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
