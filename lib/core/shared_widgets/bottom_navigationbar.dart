import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:production_management/features/home/logic/cubit/cubit.dart';
import 'package:production_management/features/home/logic/cubit/state.dart';

import '../theming/colors.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            body: cubit.bottomScreens[cubit.currentIndex],
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.greyColor,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                child: GNav(
                  curve: Curves.easeInCirc,
                  gap: 3,
                  padding: const EdgeInsets.all(10),
                  backgroundColor: AppColors.whiteColor,
                  color: AppColors.greyColor,
                  activeColor: AppColors.mainColor,
                  onTabChange: (index) {
                    cubit.changeBottom(index);
                  },
                  selectedIndex: cubit.currentIndex,
                  tabs: const [
                    GButton(
                      icon: Icons.home_outlined,
                      text: "الرئيسية",
                    ),
                    GButton(
                      icon: Icons.watch_later_outlined,
                      text: "تتبع ساعات العمل",
                    ),
                    GButton(
                      icon: Icons.pie_chart_outline,
                      text: "تتبع الصيانة",
                    ),
                    GButton(
                      icon: Icons.chat_sharp,
                      text: "التواصل الداخلي",
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
