import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class CustomOffline extends StatelessWidget {
  const CustomOffline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.all(20.0.h),
      width: MediaQuery.of(context).size.width,
      height: 300.h,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(
              ImagesApp.offline,
            ),
            fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(20.0.r),
      ),
      child: Text(
        StringApp.checkinter,
        style: TextstyleApp.black15normal,
      ),
    );
  }
}
