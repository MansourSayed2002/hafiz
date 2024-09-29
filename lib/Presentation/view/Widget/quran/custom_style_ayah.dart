import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:quran/Data/Model/ayahmodel.dart';
import 'package:quran/Data/Model/quranmodel.dart';
import 'package:quran/core/constant/images/images.dart';

import 'package:quran/core/theme/textstyle/textstyle.dart';

class CustomStyleAyah extends StatelessWidget {
  const CustomStyleAyah({
    super.key,
    required this.index,
    required this.allayah,
    required this.allquran,
  });
  final int index;
  final List<AyahsModel> allayah;
  final List<QuranModel> allquran;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          for (int i = 0; i <= allayah.length - 1; i++) ...{
            if (index + 1 == allayah[i].page) ...{
              TextSpan(
                text: allayah[i].page == 1
                    ? allayah[i].text
                    : allayah[i].text!.replaceAll(
                        "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيم", ''),
                style: TextstyleApp.black21blodAmiri,
              ),
              WidgetSpan(
                child: Container(
                  width: 25.0.w,
                  height: 25.0.h,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(ImagesApp.vector)),
                  ),
                  child: Text(
                    allayah[i].numberInSurah.toString(),
                  ),
                ),
              ),
            }
          }
        ]),
      ),
    );
  }
}
