import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/praise_cubit/praise_cubit.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class CustombottomReset extends StatelessWidget {
  const CustombottomReset({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getit<PraiseCubit>().counterequalzero();
      },
      child: Container(
        width: 100.w,
        height: 100.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ColorApp.second,
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorApp.third,
              width: 10.0.w,
            )),
        child: Text(
          'Reset',
          style: TextstyleApp.white19normal,
        ),
      ),
    );
  }
}
