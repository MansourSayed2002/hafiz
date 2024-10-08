import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/core/constant/routes/routes.dart';
import 'package:quran/core/routing/routing.dart';
import 'package:quran/core/theme/color/color.dart';

class QuarnApp extends StatelessWidget {
  const QuarnApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Poppins',
              primaryColor: ColorApp.primary,
              scaffoldBackgroundColor: ColorApp.white,
            ),
            // home: const HomeView(),
            initialRoute: Routes.onboarding,
            getPages: getPages,
          );
        });
  }
}
