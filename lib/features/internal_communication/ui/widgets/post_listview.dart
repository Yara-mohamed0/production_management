import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'post_card.dart';

class PostListview extends StatelessWidget {
  const PostListview({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          separatorBuilder: (context, index) => SizedBox(
            height: 28.h,
          ),
          itemBuilder: (context, index) => const PostCard(),
          shrinkWrap: true,
        );
      },
    );
  }
}
