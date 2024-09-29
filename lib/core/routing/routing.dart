import 'package:flutter/material.dart';
import 'package:quran/Presentation/view/screen/home/home_view.dart';
import 'package:quran/Presentation/view/screen/onboarding/onboardingview.dart';
import 'package:quran/Presentation/view/screen/quran/reading_quran_view.dart';
import 'package:quran/core/constant/routes/routes.dart';

class Routingapp {
  Route generateroute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const Onboardingview(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );
      case Routes.readingquran:
        return MaterialPageRoute(
          builder: (_) => const ReadingQuranView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route defind for ${setting.name}'),
            ),
          ),
        );
    }
  }
}
