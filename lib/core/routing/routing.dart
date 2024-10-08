import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:quran/Presentation/view/screen/home/home_view.dart';
import 'package:quran/Presentation/view/screen/onboarding/onboardingview.dart';
import 'package:quran/Presentation/view/screen/praise/praise_view.dart';
import 'package:quran/Presentation/view/screen/quran/quran_view.dart';
import 'package:quran/Presentation/view/screen/reading_quran/reading_quran_view.dart';
import 'package:quran/core/class/middleware/middleware.dart';
import 'package:quran/core/constant/routes/routes.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
      name: Routes.onboarding,
      page: () => const Onboardingview(),
      middlewares: [
        MyMiddleware(),
      ]),
  GetPage(
    name: Routes.home,
    page: () => const HomeView(),
  ),
  GetPage(
    name: Routes.readingquran,
    page: () => const ReadingQuranView(),
  ),
  GetPage(
    name: Routes.praise,
    page: () => const PraiseView(),
  ),
  GetPage(
    name: Routes.quran,
    page: () => const QuranView(),
  ),
];
