// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/shared_button.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/cubit.dart';
import '../../logic/cubit/state.dart';

class ChangeForgotPassword extends StatelessWidget {
  ChangeForgotPassword({super.key});

  var formKey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ChangeForgotPasswordCubit(),
      child: BlocConsumer<ChangeForgotPasswordCubit, ChangeForgotPasswordState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = ChangeForgotPasswordCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 700,
                  ),
                  child: IntrinsicHeight(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 50, right: 25, left: 25),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "تغيير كلمة المرور",
                                style: AppFonts.font20W900Primary,
                              ),
                            ),
                            const SizedBox(
                              height: 119,
                            ),

                            Text(
                              'كلمة المرور',
                              style: AppFonts.font14W700Primary,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            DefaultTextFormField(
                              controller: passwordController,
                              isPassword: cubit.isPassword,
                              readOnly: false,
                              color: AppColors.greyColor,
                              style: AppFonts.font14W700Black,
                              borderSide: const BorderSide(
                                color: AppColors.lightGrey,
                              ),
                              prefixIcon: const Icon(Icons.lock_outline),
                              suffixIcon: cubit.isPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              suffixPressed: () =>
                                  cubit.changePasswordVisibility(),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Password';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                                if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
                                  return 'Password must contain at least one lowercase letter';
                                }
                                if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
                                  return 'Password must contain at least one uppercase letter';
                                }
                                if (!RegExp(r'(?=.*[@$!%*?&_])')
                                    .hasMatch(value)) {
                                  return 'Password must contain at least one special character';
                                }
                                return null;
                              },
                              type: TextInputType.visiblePassword,
                            ),

                            const SizedBox(
                              height: 50,
                            ),

                            Text(
                              'تاكيد كلمة المرور',
                              style: AppFonts.font14W700Primary,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            DefaultTextFormField(
                              controller: confirmPasswordController,
                              isPassword: cubit.isConfirmPassword,
                              readOnly: false,
                              color: AppColors.greyColor,
                              style: AppFonts.font14W700Black,
                              borderSide: const BorderSide(
                                color: AppColors.lightGrey,
                              ),
                              prefixIcon: const Icon(Icons.lock_outline),
                              suffixIcon: cubit.isConfirmPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              suffixPressed: () =>
                                  cubit.changeConfirmPasswordVisibility(),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please Enter Confirmation Password';
                                }
                                if (value != passwordController.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                              type: TextInputType.visiblePassword,
                            ),

                            const Spacer(),
                            // Spacer added here
                            SharedButton(
                              text: "تغيير كلمة المرور",
                              color: AppColors.mainColor,
                              style: AppFonts.font16W700White,
                              function: () {
                                cubit.changeSubmitted();
                                if (formKey.currentState!.validate()) {
                                  Navigator.pop(context);
                                }
                              },
                            ),
                            // const SizedBox(height: 20), // Adding some padding at the bottom
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
