import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../core/shared_widgets/chat_appbar.dart';
import '../widgets/my_message.dart';
import '../widgets/person_message.dart';
import '../widgets/to_send_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatDefaultAppBar(
        iconColor: AppColors.mainColor,
        name: "أحمد جمال",
        image: 'assets/images/user_image.png',
        number: '43-123-456-7890 +',
        // Add the image path here
        action: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call, color: AppColors.mainColor),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call, color: AppColors.mainColor),
          ),
          PopupMenuButton<String>(
            icon: const Icon(
              FontAwesomeIcons.ellipsisVertical,
              color: AppColors.mainColor,
            ),
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
                      'حذف المحادثة',
                      style: AppFonts.font16W700RedColor,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 'block',
                  child: Center(
                    child: Text(
                      'حظر',
                      style: AppFonts.font16W700GreyColor,
                    ),
                  ),
                ),
              ];
            },
          ),
        ],
        backgroundColor: AppColors.whiteColor,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45,
                      ),
                      MyMessage(),
                      SizedBox(
                        height: 20,
                      ),
                      PersonMessage(),
                      SizedBox(
                        height: 20,
                      ),
                      MyMessage(),
                      SizedBox(
                        height: 20,
                      ),
                      PersonMessage(),
                      SizedBox(
                        height: 20,
                      ),
                      MyMessage(),
                      SizedBox(
                        height: 20,
                      ),
                      PersonMessage(),
                      SizedBox(
                        height: 20,
                      ),
                      MyMessage(),
                      SizedBox(
                        height: 20,
                      ),
                      PersonMessage(),
                    ],
                  ),
                ),
              ),
            ),
            ToSendMessage()
          ],
        ),
      ),
    );
  }
}
