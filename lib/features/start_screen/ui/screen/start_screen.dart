import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:production_management/core/theming/styles.dart';

import '../../../../core/shared_widgets/shared_button.dart';
import '../../../../core/theming/colors.dart';
import '../../../login/ui/screen/login_screen.dart';
import '../../../signup/ui/screen/signup_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
            child: Column(
              children: [
                Text(
                  "منصة سهلة وسريعة لإدارة الإنتاج !...",
                  style: AppFonts.font32W700Primary,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/splash_screen.png",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30.h),
                      child: Row(
                        children: [
                          Expanded(
                            child: SharedButton(
                              function: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              color: AppColors.whiteColor,
                              borderColor: AppColors.mainColor,
                              text: "انشاء حساب جديد",
                              style: AppFonts.font16W700Primary,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: SharedButton(
                              function: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                              color: AppColors.mainColor,
                              text: "تسجيل الدخول",
                              style: AppFonts.font16W700White,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
