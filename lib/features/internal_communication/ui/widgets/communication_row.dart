import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../screens/chats_screen.dart';
import '../screens/notifications.dart';

class CommunicationRow extends StatelessWidget {
  const CommunicationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "التواصل الداخلي",
          style: AppFonts.font20W700Primary,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Notifications()));
              },
              icon: const Icon(
                Icons.notifications_none_sharp,
                color: AppColors.productDetailsGrey,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatsScreen()));
              },
              icon: const Icon(
                Icons.chat_sharp,
                color: AppColors.productDetailsGrey,
              ),
            ),
          ],
        )
      ],
    );
  }
}
