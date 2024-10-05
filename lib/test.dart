import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/theme/color/color.dart';

class TestView extends StatelessWidget {
  const TestView({super.key, required this.indexpage});
  final int indexpage;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: indexpage,
    );
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(5.0.h),
            padding: EdgeInsets.all(10.0.h),
            color: ColorApp.third.withOpacity(.1),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: PageView.builder(
                    controller: controller,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        child: Text("${lis[1]['ayahs'][index]['text']}$index"),
                      );
                    }))));
  }
}

List lis = [
  {
    "number": 1,
    "name": "سُورَةُ ٱلْفَاتِحَةِ",
    "englishName": "Al-Faatiha",
    "englishNameTranslation": "The Opening",
    "revelationType": "Meccan",
    "ayahs": [
      {
        "number": 1,
        "text": "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
        "numberInSurah": 1,
        "juz": 1,
        "manzil": 1,
        "page": 1,
        "ruku": 1,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 2,
        "text": "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
        "numberInSurah": 2,
        "juz": 1,
        "manzil": 1,
        "page": 1,
        "ruku": 1,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 3,
        "text": "الرَّحْمَٰنِ الرَّحِيمِ",
        "numberInSurah": 3,
        "juz": 1,
        "manzil": 1,
        "page": 1,
        "ruku": 1,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 4,
        "text": "مَالِكِ يَوْمِ الدِّينِ",
        "numberInSurah": 4,
        "juz": 1,
        "manzil": 1,
        "page": 1,
        "ruku": 1,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 5,
        "text": "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ",
        "numberInSurah": 5,
        "juz": 1,
        "manzil": 1,
        "page": 1,
        "ruku": 1,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 6,
        "text": "اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ",
        "numberInSurah": 6,
        "juz": 1,
        "manzil": 1,
        "page": 1,
        "ruku": 1,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 7,
        "text":
            "صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ",
        "numberInSurah": 7,
        "juz": 1,
        "manzil": 1,
        "page": 1,
        "ruku": 1,
        "hizbQuarter": 1,
        "sajda": false
      },
    ]
  },
  {
    "number": 2,
    "name": "سُورَةُ البَقَرَةِ",
    "englishName": "Al-Baqara",
    "englishNameTranslation": "The Cow",
    "revelationType": "Medinan",
    "ayahs": [
      {
        "number": 8,
        "text": "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ الم",
        "numberInSurah": 1,
        "juz": 1,
        "manzil": 1,
        "page": 2,
        "ruku": 2,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 9,
        "text": "ذَٰلِكَ الْكِتَابُ لَا رَيْبَ ۛ فِيهِ ۛ هُدًى لِلْمُتَّقِينَ",
        "numberInSurah": 2,
        "juz": 1,
        "manzil": 1,
        "page": 2,
        "ruku": 2,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 10,
        "text":
            "الَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقِيمُونَ الصَّلَاةَ وَمِمَّا رَزَقْنَاهُمْ يُنْفِقُونَ",
        "numberInSurah": 3,
        "juz": 1,
        "manzil": 1,
        "page": 2,
        "ruku": 2,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 11,
        "text":
            "وَالَّذِينَ يُؤْمِنُونَ بِمَا أُنْزِلَ إِلَيْكَ وَمَا أُنْزِلَ مِنْ قَبْلِكَ وَبِالْآخِرَةِ هُمْ يُوقِنُونَ",
        "numberInSurah": 4,
        "juz": 1,
        "manzil": 1,
        "page": 2,
        "ruku": 2,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 12,
        "text":
            "أُولَٰئِكَ عَلَىٰ هُدًى مِنْ رَبِّهِمْ ۖ وَأُولَٰئِكَ هُمُ الْمُفْلِحُونَ",
        "numberInSurah": 5,
        "juz": 1,
        "manzil": 1,
        "page": 2,
        "ruku": 2,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 13,
        "text":
            "إِنَّ الَّذِينَ كَفَرُوا سَوَاءٌ عَلَيْهِمْ أَأَنْذَرْتَهُمْ أَمْ لَمْ تُنْذِرْهُمْ لَا يُؤْمِنُونَ",
        "numberInSurah": 6,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 2,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 14,
        "text":
            "خَتَمَ اللَّهُ عَلَىٰ قُلُوبِهِمْ وَعَلَىٰ سَمْعِهِمْ ۖ وَعَلَىٰ أَبْصَارِهِمْ غِشَاوَةٌ ۖ وَلَهُمْ عَذَابٌ عَظِيمٌ",
        "numberInSurah": 7,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 2,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 15,
        "text":
            "وَمِنَ النَّاسِ مَنْ يَقُولُ آمَنَّا بِاللَّهِ وَبِالْيَوْمِ الْآخِرِ وَمَا هُمْ بِمُؤْمِنِينَ",
        "numberInSurah": 8,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 16,
        "text":
            "يُخَادِعُونَ اللَّهَ وَالَّذِينَ آمَنُوا وَمَا يَخْدَعُونَ إِلَّا أَنْفُسَهُمْ وَمَا يَشْعُرُونَ",
        "numberInSurah": 9,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 17,
        "text":
            "فِي قُلُوبِهِمْ مَرَضٌ فَزَادَهُمُ اللَّهُ مَرَضًا ۖ وَلَهُمْ عَذَابٌ أَلِيمٌ بِمَا كَانُوا يَكْذِبُونَ",
        "numberInSurah": 10,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 18,
        "text":
            "وَإِذَا قِيلَ لَهُمْ لَا تُفْسِدُوا فِي الْأَرْضِ قَالُوا إِنَّمَا نَحْنُ مُصْلِحُونَ",
        "numberInSurah": 11,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 19,
        "text": "أَلَا إِنَّهُمْ هُمُ الْمُفْسِدُونَ وَلَٰكِنْ لَا يَشْعُرُونَ",
        "numberInSurah": 12,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 20,
        "text":
            "وَإِذَا قِيلَ لَهُمْ آمِنُوا كَمَا آمَنَ النَّاسُ قَالُوا أَنُؤْمِنُ كَمَا آمَنَ السُّفَهَاءُ ۗ أَلَا إِنَّهُمْ هُمُ السُّفَهَاءُ وَلَٰكِنْ لَا يَعْلَمُونَ",
        "numberInSurah": 13,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 21,
        "text":
            "وَإِذَا لَقُوا الَّذِينَ آمَنُوا قَالُوا آمَنَّا وَإِذَا خَلَوْا إِلَىٰ شَيَاطِينِهِمْ قَالُوا إِنَّا مَعَكُمْ إِنَّمَا نَحْنُ مُسْتَهْزِئُونَ",
        "numberInSurah": 14,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 22,
        "text":
            "اللَّهُ يَسْتَهْزِئُ بِهِمْ وَيَمُدُّهُمْ فِي طُغْيَانِهِمْ يَعْمَهُونَ",
        "numberInSurah": 15,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
      {
        "number": 23,
        "text":
            "أُولَٰئِكَ الَّذِينَ اشْتَرَوُا الضَّلَالَةَ بِالْهُدَىٰ فَمَا رَبِحَتْ تِجَارَتُهُمْ وَمَا كَانُوا مُهْتَدِينَ",
        "numberInSurah": 16,
        "juz": 1,
        "manzil": 1,
        "page": 3,
        "ruku": 3,
        "hizbQuarter": 1,
        "sajda": false
      },
    ]
  }
];

List ayah = [
  {
    "number": 1,
    "text": "﻿بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
    "numberInSurah": 1,
    "juz": 1,
    "manzil": 1,
    "page": 1,
    "ruku": 1,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 2,
    "text": "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
    "numberInSurah": 2,
    "juz": 1,
    "manzil": 1,
    "page": 1,
    "ruku": 1,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 3,
    "text": "الرَّحْمَٰنِ الرَّحِيمِ",
    "numberInSurah": 3,
    "juz": 1,
    "manzil": 1,
    "page": 1,
    "ruku": 1,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 4,
    "text": "مَالِكِ يَوْمِ الدِّينِ",
    "numberInSurah": 4,
    "juz": 1,
    "manzil": 1,
    "page": 1,
    "ruku": 1,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 5,
    "text": "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ",
    "numberInSurah": 5,
    "juz": 1,
    "manzil": 1,
    "page": 1,
    "ruku": 1,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 6,
    "text": "اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ",
    "numberInSurah": 6,
    "juz": 1,
    "manzil": 1,
    "page": 1,
    "ruku": 1,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 7,
    "text":
        "صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ",
    "numberInSurah": 7,
    "juz": 1,
    "manzil": 1,
    "page": 1,
    "ruku": 1,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 8,
    "text": "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ الم",
    "numberInSurah": 1,
    "juz": 1,
    "manzil": 1,
    "page": 2,
    "ruku": 2,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 9,
    "text": "ذَٰلِكَ الْكِتَابُ لَا رَيْبَ ۛ فِيهِ ۛ هُدًى لِلْمُتَّقِينَ",
    "numberInSurah": 2,
    "juz": 1,
    "manzil": 1,
    "page": 2,
    "ruku": 2,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 10,
    "text":
        "الَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقِيمُونَ الصَّلَاةَ وَمِمَّا رَزَقْنَاهُمْ يُنْفِقُونَ",
    "numberInSurah": 3,
    "juz": 1,
    "manzil": 1,
    "page": 2,
    "ruku": 2,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 11,
    "text":
        "وَالَّذِينَ يُؤْمِنُونَ بِمَا أُنْزِلَ إِلَيْكَ وَمَا أُنْزِلَ مِنْ قَبْلِكَ وَبِالْآخِرَةِ هُمْ يُوقِنُونَ",
    "numberInSurah": 4,
    "juz": 1,
    "manzil": 1,
    "page": 2,
    "ruku": 2,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 12,
    "text":
        "أُولَٰئِكَ عَلَىٰ هُدًى مِنْ رَبِّهِمْ ۖ وَأُولَٰئِكَ هُمُ الْمُفْلِحُونَ",
    "numberInSurah": 5,
    "juz": 1,
    "manzil": 1,
    "page": 2,
    "ruku": 2,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 13,
    "text":
        "إِنَّ الَّذِينَ كَفَرُوا سَوَاءٌ عَلَيْهِمْ أَأَنْذَرْتَهُمْ أَمْ لَمْ تُنْذِرْهُمْ لَا يُؤْمِنُونَ",
    "numberInSurah": 6,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 2,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 14,
    "text":
        "خَتَمَ اللَّهُ عَلَىٰ قُلُوبِهِمْ وَعَلَىٰ سَمْعِهِمْ ۖ وَعَلَىٰ أَبْصَارِهِمْ غِشَاوَةٌ ۖ وَلَهُمْ عَذَابٌ عَظِيمٌ",
    "numberInSurah": 7,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 2,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 15,
    "text":
        "وَمِنَ النَّاسِ مَنْ يَقُولُ آمَنَّا بِاللَّهِ وَبِالْيَوْمِ الْآخِرِ وَمَا هُمْ بِمُؤْمِنِينَ",
    "numberInSurah": 8,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 16,
    "text":
        "يُخَادِعُونَ اللَّهَ وَالَّذِينَ آمَنُوا وَمَا يَخْدَعُونَ إِلَّا أَنْفُسَهُمْ وَمَا يَشْعُرُونَ",
    "numberInSurah": 9,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 17,
    "text":
        "فِي قُلُوبِهِمْ مَرَضٌ فَزَادَهُمُ اللَّهُ مَرَضًا ۖ وَلَهُمْ عَذَابٌ أَلِيمٌ بِمَا كَانُوا يَكْذِبُونَ",
    "numberInSurah": 10,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 18,
    "text":
        "وَإِذَا قِيلَ لَهُمْ لَا تُفْسِدُوا فِي الْأَرْضِ قَالُوا إِنَّمَا نَحْنُ مُصْلِحُونَ",
    "numberInSurah": 11,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 19,
    "text": "أَلَا إِنَّهُمْ هُمُ الْمُفْسِدُونَ وَلَٰكِنْ لَا يَشْعُرُونَ",
    "numberInSurah": 12,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 20,
    "text":
        "وَإِذَا قِيلَ لَهُمْ آمِنُوا كَمَا آمَنَ النَّاسُ قَالُوا أَنُؤْمِنُ كَمَا آمَنَ السُّفَهَاءُ ۗ أَلَا إِنَّهُمْ هُمُ السُّفَهَاءُ وَلَٰكِنْ لَا يَعْلَمُونَ",
    "numberInSurah": 13,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 21,
    "text":
        "وَإِذَا لَقُوا الَّذِينَ آمَنُوا قَالُوا آمَنَّا وَإِذَا خَلَوْا إِلَىٰ شَيَاطِينِهِمْ قَالُوا إِنَّا مَعَكُمْ إِنَّمَا نَحْنُ مُسْتَهْزِئُونَ",
    "numberInSurah": 14,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 22,
    "text":
        "اللَّهُ يَسْتَهْزِئُ بِهِمْ وَيَمُدُّهُمْ فِي طُغْيَانِهِمْ يَعْمَهُونَ",
    "numberInSurah": 15,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
  {
    "number": 23,
    "text":
        "أُولَٰئِكَ الَّذِينَ اشْتَرَوُا الضَّلَالَةَ بِالْهُدَىٰ فَمَا رَبِحَتْ تِجَارَتُهُمْ وَمَا كَانُوا مُهْتَدِينَ",
    "numberInSurah": 16,
    "juz": 1,
    "manzil": 1,
    "page": 3,
    "ruku": 3,
    "hizbQuarter": 1,
    "sajda": false
  },
];
