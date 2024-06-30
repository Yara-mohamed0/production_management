import 'package:flutter/material.dart';

import '../../../../core/shared_widgets/header.dart';
import '../widgets/communication_row.dart';
import '../widgets/post_listview.dart';
import '../widgets/write_post_container.dart';

class InternalCommunicationScreen extends StatelessWidget {
  const InternalCommunicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeader(),
                SizedBox(
                  height: 28,
                ),
                CommunicationRow(),
                SizedBox(
                  height: 16,
                ),
                WritePostContainer(),
                SizedBox(
                  height: 36,
                ),
                PostListview()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
