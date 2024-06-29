import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';
import 'font_weights.dart';

class AppFonts {
  //900
  static TextStyle font20W900Primary = GoogleFonts.cairo(
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.thickestFont,
      color: AppColors.mainColor);

  //700
  static TextStyle font12W700HomeNameColor = GoogleFonts.cairo(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.homeNameColor,
  );

  static TextStyle font12W700ChartDetailsColor = GoogleFonts.cairo(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.chartDetailsColor,
  );

  static TextStyle font14W700White = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static TextStyle font14W700Primary = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainColor,
  );

  static TextStyle font14W700LightGrey = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.lightGrey,
  );

  static TextStyle font14W700GreyColor = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.greyColor,
  );

  static TextStyle font14W700LightGreen = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.lightGreen,
  );

  static TextStyle font14W700Black = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.blackColor,
  );

  static TextStyle font14W700ServiceConditions = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.serviceConditions,
  );
  static TextStyle font14W700ProductDetails = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.productDetailsGrey,
  );

  static TextStyle font14W700AccentColor = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.accentColor,
  );

  static TextStyle font15W700White = GoogleFonts.cairo(
      fontSize: 15.sp, fontWeight: FontWeightHelper.bold, color: Colors.white);

  static TextStyle font15W700Primary = GoogleFonts.cairo(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.mainColor);

  static TextStyle font16W700LightGrey = GoogleFonts.cairo(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.lightGrey,
  );

  static TextStyle font16W700Primary = GoogleFonts.cairo(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.mainColor,
  );

  static TextStyle font16W700White = GoogleFonts.cairo(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.whiteColor,
  );

  static TextStyle font16W700GreyColor = GoogleFonts.cairo(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.greyColor,
  );

  static TextStyle font16W700RedColor = GoogleFonts.cairo(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.redColor,
  );

  static TextStyle font17W700GreyColor = GoogleFonts.cairo(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.greyColor,
  );

  static TextStyle font18W700Black = GoogleFonts.cairo(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.blackColor);

  static TextStyle font18W700Primary = GoogleFonts.cairo(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.mainColor);

  static TextStyle font20W700Primary = GoogleFonts.cairo(
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.mainColor);

  static TextStyle font20W700Black = GoogleFonts.cairo(
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.blackColor);

  static TextStyle font20W700Grey = GoogleFonts.cairo(
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.greyColor);


  static TextStyle font20W700OrText = GoogleFonts.cairo(
      fontSize: 20.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.orText);

  static TextStyle font24W700Black = GoogleFonts.cairo(
      fontSize: 34.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.blackColor);

  static TextStyle font24W700Primary = GoogleFonts.cairo(
      fontSize: 34.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.mainColor);

  static TextStyle font24W700Blue = GoogleFonts.cairo(
      fontSize: 34.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.clockColor);

  static TextStyle font27W700Black = GoogleFonts.cairo(
      fontSize: 27.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.blackColor);

  static TextStyle font28W700Primary = GoogleFonts.cairo(
      fontSize: 28.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.mainColor);

  static TextStyle font32W700Primary = GoogleFonts.cairo(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: AppColors.mainColor);

  //600

  static TextStyle font12W600White = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.whiteColor);

  static TextStyle font12W600Grey = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.greyColor);

  static TextStyle font12W600Black = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.blackColor);
  static TextStyle font12W600BlackWithOpacity = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.blackColor.withOpacity(0.49));

  static TextStyle font14W600Primary = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.mainColor);

  static TextStyle font14W600Black = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.blackColor);

  static TextStyle font14W600Red = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.redColor);

  static TextStyle font14W600LightGrey = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.lightGrey);

  static TextStyle font15W600Primary = GoogleFonts.cairo(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.mainColor);

  static TextStyle font15W600LightGrey = GoogleFonts.cairo(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.lightGrey);

  static TextStyle font16W600LightGrey = GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.lightGrey);

  static TextStyle font16W600Black = GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.blackColor);

  static TextStyle font16W600Grey = GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.greyColor);

  static TextStyle font18W600Black = GoogleFonts.cairo(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.blackColor);

  static TextStyle font18W600White = GoogleFonts.cairo(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: AppColors.whiteColor);

  //500

  static TextStyle font12W500HomeNameColor = GoogleFonts.cairo(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.homeNameColor,
  );

  static TextStyle font14W500Black = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.blackColor);

  static TextStyle font15W500Grey = GoogleFonts.cairo(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium,
      color: const Color(0xff989898));

  static TextStyle font16W500White = GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.whiteColor);

  static TextStyle font16W500Black = GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.blackColor);

  static TextStyle font16W500LightGrey = GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.lightGrey);

  static TextStyle font17W500Primary = GoogleFonts.cairo(
      fontSize: 17.sp,
      fontWeight: FontWeightHelper.medium,
      color: AppColors.mainColor);

  //400
  static TextStyle font12W400Primary = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.mainColor);

  static TextStyle font12W400White = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.whiteColor);

  static TextStyle font12W400Black = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.blackColor);

  static TextStyle font12W400LightGrey = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.lightGrey);

  static TextStyle font12W400BlackOpacity = GoogleFonts.cairo(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.blackColor.withOpacity(0.6));

  static TextStyle font14W400Black = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.blackColor);

  static TextStyle font14W400LightGrey = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.lightGrey);

  static TextStyle font14W400Grey = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.greyColor);

  static TextStyle font14W400SearchGrey = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.searchIcon);

  static TextStyle font14W400Primary = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.mainColor);

  static TextStyle font14W400AccentColor = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.accentColor);

  static TextStyle font14W400TextGreen = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.textGreen);

  static TextStyle font14W400TextRed = GoogleFonts.cairo(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: AppColors.textRed);

  static TextStyle font16W400Black = GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.blackColor);

  static TextStyle font16W400TextColor = GoogleFonts.cairo(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.serviceConditions);
}
