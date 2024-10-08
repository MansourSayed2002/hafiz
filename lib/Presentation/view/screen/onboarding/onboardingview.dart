import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/Presentation/view/Widget/onboarding/CustomLogoonboarding.dart';
import 'package:quran/Presentation/view/Widget/onboarding/CustomexplaneApp.dart';
import 'package:quran/Presentation/view/screen/reading_quran/reading_quran_view.dart';
import 'package:quran/core/class/navigation_app.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/function/sharedpre.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/widget/Custombuttom.dart';

class Onboardingview extends StatelessWidget {
  const Onboardingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomLogoonboarding(
            image: ImagesApp.group78,
          ),
          const CustomexplaneApp(
            body: StringApp.readingquran,
            title: StringApp.hafiz,
          ),
          Custombuttom(
            ontap: () {
              context.push(const ReadingQuranView());
              addSharedpreint('step', 1);
            },
            title: StringApp.getstarted,
            iconData: CupertinoIcons.arrow_right,
          )
        ],
      ),
    );
  }
}
