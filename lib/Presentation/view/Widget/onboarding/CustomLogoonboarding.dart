import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/theme/color/color.dart';

class CustomLogoonboarding extends StatelessWidget {
  const CustomLogoonboarding({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -100.0.h,
          left: -30.0.h,
          child: Container(
            width: 80.0.w,
            height: 80.0.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorApp.second.withOpacity(.6),
            ),
          ),
        ),
        Positioned(
          top: -140.0.h,
          left: 30.0.h,
          child: Container(
            width: 80.0.w,
            height: 80.0.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorApp.second.withOpacity(.9),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(30.0.h),
          width: MediaQuery.of(context).size.width,
          height: 400.0.h,
          decoration: BoxDecoration(
            color: ColorApp.second,
            borderRadius: BorderRadius.circular(20.0.h),
          ),
          child: Image.asset(image),
        ),
      ],
    );
  }
}
