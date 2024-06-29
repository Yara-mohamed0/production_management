// Sign up widget
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/shared_button.dart';

import '../../../../../core/theming/colors.dart';

import '../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../core/theming/styles.dart';
import '../../../login/ui/screen/login_screen.dart';
import '../../logic/cubit/cubit.dart';
import '../../logic/cubit/state.dart';
import '../widgets/name_row.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});

  var formKey = GlobalKey<FormState>();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  // List of dropdown menu items
  final List<String> roles = ["Sign Up As", 'Student', 'Teacher', 'Parent'];
  String selectedRole = "Sign Up As";

  final List<String> academicYears = [
    "Choose Your Academic Year",
    'Invalid',
    '1st Year',
    '2nd Year',
    '3rd Year',
    '4th Year'
  ];
  String selectedYear = "Choose Your Academic Year";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = SignUpCubit.get(context);
          if (state is SignUpRoleSelectedState) {
            selectedRole = state.selectedRole;
          }
          if (state is SignUpYearSelectedState) {
            selectedYear = state.selectedYear;
          }
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 50.h, right: 25.w, left: 25.w),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text("حساب جديد",
                              style: AppFonts.font28W700Primary),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        NameRow(
                            firstNameController: firstNameController,
                            lastNameController: lastNameController),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'البريد الالكتروني',
                          style: AppFonts.font18W700Primary,
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
                            color: AppColors.borderColor,
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
                          height: 16.h,
                        ),
                        Text(
                          'كلمة السر',
                          style: AppFonts.font18W700Primary,
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
                            color: AppColors.borderColor,
                          ),
                          prefixIcon: const Icon(Icons.lock_outline),
                          suffixIcon: cubit.isPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          suffixPressed: () => cubit.changePasswordVisibility(),
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
                            if (!RegExp(r'(?=.*[@$!%*?&_])').hasMatch(value)) {
                              return 'Password must contain at least one special character';
                            }
                            return null;
                          },
                          type: TextInputType.visiblePassword,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'تأكيد كلمة السر',
                          style: AppFonts.font18W700Primary,
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
                            color: AppColors.borderColor,
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
                        SizedBox(
                          height: 49.h,
                        ),
                        SharedButton(
                          color: AppColors.mainColor,
                          style: AppFonts.font16W700White,
                          function: () {
                            cubit.changeSubmitted();
                            if (formKey.currentState!.validate()) {}
                          },
                          text: "انشاء حساب",
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            Text(
                              "هل لديك حساب بالفعل؟",
                              style: AppFonts.font14W400Black,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                "سجل الان",
                                style: AppFonts.font14W400AccentColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 27.h,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: 'من خلال المتابعة، فإنك توافق على ',
                              style: AppFonts.font14W700ServiceConditions,
                              children: [
                                TextSpan(
                                  text: 'شروط الخدمة',
                                  style: AppFonts.font14W700AccentColor,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Handle the tap for the terms of service
                                    },
                                ),
                                TextSpan(
                                  text: ' و',
                                  style: AppFonts.font14W700ServiceConditions,
                                ),
                                TextSpan(
                                  text: ' سياسة الخصوصية ',
                                  style: AppFonts.font14W700AccentColor,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // Handle the tap for the privacy policy
                                    },
                                ),
                                TextSpan(
                                  text: ' الخاصة بنا.',
                                  style: AppFonts.font14W700ServiceConditions,
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
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
