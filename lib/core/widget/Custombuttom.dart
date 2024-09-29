import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({
    super.key,
    required this.iconData,
    required this.title,
  });
  final IconData iconData;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 150.0.w,
        margin: EdgeInsets.only(top: 25.0.r),
        padding: EdgeInsets.all(11.0.r),
        decoration: BoxDecoration(
            color: ColorApp.white, borderRadius: BorderRadius.circular(40.0.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: TextstyleApp.black15normal,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 3.0.r,
                  right: 10.0.r,
                  child: Container(
                    width: 20.0.w,
                    height: 20.0.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorApp.third,
                    ),
                  ),
                ),
                Icon(iconData),
              ],
            )
          ],
        ),
      ),
    );
  }
}
