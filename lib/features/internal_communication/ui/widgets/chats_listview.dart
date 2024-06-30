import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/default_line.dart';
import 'chats_card.dart';

class ChatsListview extends StatelessWidget {
  const ChatsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          separatorBuilder: (context, index) => const DefaultLine(),
          itemBuilder: (context, index) => const ChatsCard(),
          shrinkWrap: true,
        );
      },
    );
  }
}
