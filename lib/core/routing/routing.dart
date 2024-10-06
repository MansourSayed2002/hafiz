import 'package:flutter/material.dart';
import 'package:quran/Presentation/view/screen/home/home_view.dart';
import 'package:quran/Presentation/view/screen/onboarding/onboardingview.dart';
import 'package:quran/Presentation/view/screen/praise/praise_view.dart';
import 'package:quran/Presentation/view/screen/quran/quran_view.dart';
import 'package:quran/Presentation/view/screen/reading_quran/reading_quran_view.dart';
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
      case Routes.praise:
        return MaterialPageRoute(
          builder: (_) => const PraiseView(),
        );
      case Routes.quran:
        return MaterialPageRoute(
          builder: (_) => const QuranView(),
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
