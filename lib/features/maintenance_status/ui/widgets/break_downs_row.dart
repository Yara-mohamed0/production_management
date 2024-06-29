import 'package:flutter/material.dart';
import 'package:production_management/core/theming/styles.dart';

class BreakDownRow extends StatelessWidget {
  const BreakDownRow({
    super.key,
    required this.productDetail,
    required this.productName,
  });

  final String productDetail;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          productDetail,
          style: AppFonts.font14W700ProductDetails,
        ),
        Text(
          productName,
          style: AppFonts.font14W700Black,
        ),
      ],
    );
  }
}
