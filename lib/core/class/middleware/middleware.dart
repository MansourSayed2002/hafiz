import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:quran/core/constant/routes/routes.dart';
import 'package:quran/core/function/sharedpre.dart';

class MyMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (searchsharedpreint('step') != null) {
      return const RouteSettings(
        name: Routes.readingquran,
      );
    }
    return null;
  }
}
