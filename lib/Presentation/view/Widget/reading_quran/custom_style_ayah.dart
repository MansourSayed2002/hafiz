import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Data/Model/ayahmodel.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class CustomStyleAyah extends StatelessWidget {
  const CustomStyleAyah({
    super.key,
    required this.index,
    required this.allayah,
  });
  final int index;
  final List<AyahsModel> allayah;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textDirection: TextDirection.rtl,
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
              TextSpan(
                text: allayah[i].numberInSurah.toString(),
                style: TextstyleApp.black15normal.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Container(
                  width: 33.0.w,
                  height: 33.0.h,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(ImagesApp.vector)),
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      allayah[i].numberInSurah.toString(),
                      style: TextstyleApp.black15normal.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
