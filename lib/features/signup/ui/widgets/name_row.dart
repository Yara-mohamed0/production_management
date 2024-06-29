import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class NameRow extends StatelessWidget {
  const NameRow(
      {super.key,
      required this.firstNameController,
      required this.lastNameController});

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الاسم الأول',
                style: AppFonts.font18W700Primary,
              ),
              SizedBox(
                height: 4.h,
              ),
              DefaultTextFormField(
                controller: firstNameController,
                isPassword: false,
                color: AppColors.whiteColor,
                style: AppFonts.font14W700Black,
                borderSide: const BorderSide(
                  color: AppColors.borderColor,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'برجاء ادخل الاسم';
                  }
                  if (value.contains(RegExp(r'[0-9]'))) {
                    return 'لا يمكن ان يحتوي على ارقام';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الاسم الأخير',
                style: AppFonts.font18W700Primary,
              ),
              SizedBox(
                height: 4.h,
              ),
              DefaultTextFormField(
                controller: lastNameController,
                isPassword: false,
                color: AppColors.whiteColor,
                style: AppFonts.font14W700Black,
                borderSide: const BorderSide(
                  color: AppColors.borderColor,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'برجاء ادخل الاسم';
                  }
                  if (value.contains(RegExp(r'[0-9]'))) {
                    return 'لا يمكن ان يحتوي على ارقام';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
