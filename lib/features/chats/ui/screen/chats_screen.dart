import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/app_bar.dart';

import '../../../../core/theming/colors.dart';
import '../widgets/chats_listview.dart';
import '../widgets/custom_search_delegate.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        iconColor: AppColors.mainColor,
        name: "المحادثات",
        isCenter: true,
        action: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
            icon: const Icon(Icons.search, color: AppColors.clockColor),
          ),
        ],
        backgroundColor: AppColors.appBackgroundColor,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Column(
              children: [
                ChatsListview(),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: const Icon(
          Icons.chat_outlined,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
