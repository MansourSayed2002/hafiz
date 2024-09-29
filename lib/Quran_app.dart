import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/view/screen/quran/reading_quran_view.dart';
import 'package:quran/core/routing/routing.dart';
import 'package:quran/core/theme/color/color.dart';

class QuarnApp extends StatelessWidget {
  const QuarnApp({super.key, required this.routingapp});
  final Routingapp routingapp;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Poppins',
              primaryColor: ColorApp.primary,
              scaffoldBackgroundColor: ColorApp.white,
            ),
            home: const ReadingQuranView(),
            // initialRoute: Routes.onboarding,
            // onGenerateRoute: routingapp.generateroute,
          );
        });
  }
}
