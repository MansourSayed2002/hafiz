import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/view/Widget/home/CustomcontainerClippath.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class ItemscontainerGridview extends StatelessWidget {
  const ItemscontainerGridview({
    super.key,
    required this.color,
    required this.color2,
    required this.image,
    required this.title,
    required this.heightimage,
    required this.ontap,
  });
  final String image;
  final String title;
  final Color color;
  final Color color2;
  final double heightimage;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(10.0.h),
            height: 190.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0.r),
              color: color,
            ),
          ),
          Positioned(
            top: 40.0.h,
            left: 30.0,
            child: Text(
              title,
              style: TextstyleApp.black25blod.copyWith(fontSize: 20.0.sp),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomcontainerClippath(
              clipper: WaveClipperTwo(
                flip: true,
                reverse: true,
              ),
              height: 80.0.h,
              color: color2,
              grad: false,
            ),
          ),
          Positioned(
            bottom: 30.0.h,
            right: 30.0.h,
            child: SizedBox(
              height: heightimage,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
