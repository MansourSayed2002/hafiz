import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/Presentation/view/Widget/onboarding/CustomLogoonboarding.dart';
import 'package:quran/Presentation/view/Widget/onboarding/CustomexplaneApp.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/widget/Custombuttom.dart';

class Onboardingview extends StatelessWidget {
  const Onboardingview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.primary,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomLogoonboarding(
            image: ImagesApp.group78,
          ),
          CustomexplaneApp(
            body: StringApp.readingquran,
            title: StringApp.hafiz,
          ),
          Custombuttom(
            title: StringApp.getstarted,
            iconData: CupertinoIcons.arrow_right,
          )
        ],
      ),
    );
  }
}
