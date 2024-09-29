import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/class/popular.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/theme/color/color.dart';

List<Popular> popularlist = [
  Popular(
    color: ColorApp.fourth.withOpacity(.1),
    image: ImagesApp.group,
    title: StringApp.quran,
    color2: ColorApp.fourth.withOpacity(.2),
    heightimage: 55.0.h,
  ),
  Popular(
    color: ColorApp.fifth.withOpacity(.1),
    image: ImagesApp.group7,
    title: StringApp.listening,
    color2: ColorApp.fifth.withOpacity(.2),
    heightimage: 87.0.h,
  ),
  Popular(
    color: ColorApp.sixth.withOpacity(.1),
    image: ImagesApp.group80,
    title: StringApp.recite,
    color2: ColorApp.sixth.withOpacity(.2),
    heightimage: 97.0.h,
  ),
];
