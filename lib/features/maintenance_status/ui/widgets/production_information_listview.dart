import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'production_information_card.dart';

class ProductionInformationListview extends StatelessWidget {
  const ProductionInformationListview({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 2,
          separatorBuilder: (context, index) => SizedBox(
            height: 4.h,
          ),
          itemBuilder: (context, index) => const ProductionInformationCard(),
          shrinkWrap: true,
        );
      },
    );
  }
}
