import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class ProductionInformationRow extends StatelessWidget {
  const ProductionInformationRow({
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
        Expanded(
          child: Text(
            productName,
            style: AppFonts.font14W700Black,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}