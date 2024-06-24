
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/shared_button.dart';
import '../../../../../core/shared_widgets/text_button.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../core/theming/styles.dart';

import '../../logic/cubit/cubit.dart';
import '../../logic/cubit/state.dart';
import 'forget_password_bottomsheet.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = LoginCubit.get(context);
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
                            child: Text(
                              "تسجيل الدخول",
                              style: AppFonts.font28W700Primary,
                            ),
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          Text(
                            'البريد الالكتروني',
                            style: AppFonts.font18W700Black,
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
                            height: 19.h,
                          ),
                          Text(
                            'كلمة المرور',
                            style: AppFonts.font18W700Black,
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
                                return 'برجاء ادخال كلمة المرور';
                              }

                              return null;
                            },
                            type: TextInputType.visiblePassword,
                          ),
                          textButton(
                              text: "هل نسيت كلمة المرور؟",
                              onpress: () {
                                showModalBottomSheet(
                                  backgroundColor: AppColors.whiteColor,
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) => const ForgetPassword(),
                                );
                              },
                              textStyle: AppFonts.font16W700Primary),
                          SizedBox(
                            height: 70.h,
                          ),
                          SharedButton(
                            style: AppFonts.font16W700White,
                            color: AppColors.mainColor,
                            function: () {
                              if (formKey.currentState!.validate()) {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) =>
                                //             PatientBottomNavigation()));
                              }
                            },
                            text: "تسجيل الدخول",
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "لم تمتلك حساب؟",
                                style: AppFonts.font14W400Black,
                              ),
                              TextButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => SignUp()));
                                },
                                child: Text(
                                  " انشئ حساب",
                                  style: AppFonts.font14W400AccentColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 26.h,
                          ),
                          Center(
                            child: Text(
                              "أو عن طريق",
                              style: AppFonts.font20W700OrText,
                            ),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          SharedButton(
                            color: AppColors.whiteColor,
                            function: () {},
                            isText: false,
                            icon: "assets/images/google.png",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
