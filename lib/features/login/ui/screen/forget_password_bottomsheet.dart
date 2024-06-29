import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/shared_button.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../core/theming/styles.dart';
import '../../../otp/ui/screen/validation_code.dart';

// ignore: must_be_immutable
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var emailController = TextEditingController();

  // ignore: prefer_typing_uninitialized_variables
  var formKey;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 325),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 28, right: 25, left: 25, bottom: 50),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "ادخل البريد الالكترونى لارسال الرمز",
                    style: AppFonts.font14W700Black,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    'البريد الالكتروني',
                    style: AppFonts.font14W700Primary,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  DefaultTextFormField(
                    controller: emailController,
                    isPassword: false,
                    color: AppColors.whiteColor,
                    style: AppFonts.font14W700Black,
                    borderSide: const BorderSide(
                      color: AppColors.lightGrey,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'برجاء ادخل البريد الالكتروني';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return 'برجاء ادخل بريد الكتروني متاح';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SharedButton(
                        style: AppFonts.font16W700White,
                        text: "ارسال رمز التحقق",
                        color: AppColors.mainColor,
                        function: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ValidationCode(
                                          email: emailController,
                                        )));
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
