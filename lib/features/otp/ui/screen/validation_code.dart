// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/shared_widgets/shared_button.dart';
import '../../../../../core/theming/colors.dart';

import '../../../../core/theming/styles.dart';
import '../../../change_password/ui/screen/change_password_forget.dart';
import '../../logic/cubit.dart';
import '../../logic/state.dart';
import '../widgets/codeInputs.dart';
import '../widgets/countDown.dart';

class ValidationCode extends StatelessWidget {
  ValidationCode({super.key, required this.email});

  final TextEditingController email;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ValidationCubit(),
      child: ValidationCodeView(email: email),
    );
  }
}

class ValidationCodeView extends StatelessWidget {
  const ValidationCodeView({super.key, required this.email});

  final TextEditingController email;

  @override
  Widget build(BuildContext context) {
    int secondsRemaining = 1;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 85, right: 25, left: 25, bottom: 20),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          "تحقق من عنوان بريدك الإلكتروني ",
                          style: AppFonts.font18W600Black,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Text(
                          "لقد أرسلنا لك رمزا مكونا من 4 أرقام للتحقق عنوان بريدك الإلكتروني ",
                          style: AppFonts.font14W400Black,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: Text(
                          email.text,
                          style: AppFonts.font14W400Black,
                        ),
                      ),
                      Center(
                        child: Text(
                          " أدخل في الحقل أدناه.",
                          style: AppFonts.font14W400Black,
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      CodeInputs(),
                      const SizedBox(
                        height: 52,
                      ),
                      BlocBuilder<ValidationCubit, ValidationStates>(
                        builder: (context, state) {
                          if (state is TimerRunningState) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ينتهي خلال ",
                                  style: AppFonts.font14W400Black,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                CountdownTimer(
                                  controller: state.controller,
                                  remaining: secondsRemaining,
                                ),
                              ],
                            );
                          } else if (state is TimerFinishedState) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "لم تستلم الرمز؟",
                                  style: AppFonts.font14W600Black,
                                ),
                                TextButton(
                                  onPressed: () {
                                    BlocProvider.of<ValidationCubit>(context)
                                        .startTimer(); // Start the timer again
                                  },
                                  child: Text(
                                    "اعاده الارسال",
                                    style: AppFonts.font14W600Primary,
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return Container(); // Handle initial state or other states
                          }
                        },
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SharedButton(
                  color: AppColors.mainColor,
                  style: AppFonts.font16W700White,
                  text: "ارسال",
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangeForgotPassword()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
