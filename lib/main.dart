import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'core/theming/colors.dart';
import 'features/start_screen/ui/screen/start_screen.dart';
import 'generated/l10n.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hospital',
          theme: ThemeData(
            cardColor: AppColors.imageBackground,
            appBarTheme: const AppBarTheme(color: AppColors.whiteColor),
            colorScheme: ColorScheme.fromSeed(seedColor: AppColors.whiteColor),
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true,
          ),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale("ar"),
          home: const StartScreen(),
        );
      },
    );
  }
}