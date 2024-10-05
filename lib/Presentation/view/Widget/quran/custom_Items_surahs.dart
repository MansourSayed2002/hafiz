import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class CustomItemsSurahs extends StatelessWidget {
  const CustomItemsSurahs({
    super.key,
    this.leading,
    this.subtitle,
    this.title,
    this.trailing,
    this.ontap,
  });
  final String? title;
  final String? subtitle;
  final String? leading;
  final String? trailing;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0.h),
            child: ListTile(
              leading: Container(
                width: 50.0.w,
                height: 50.0.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0.r),
                  color: ColorApp.third,
                ),
                child: Text(
                  leading!,
                  style: TextstyleApp.white19normal,
                ),
              ),
              title: Text(
                title!,
                style: TextstyleApp.black15normal,
              ),
              subtitle: Text(subtitle!),
              trailing: Text(
                trailing!,
                style: TextstyleApp.black21blodAmiri.copyWith(
                  color: ColorApp.primary,
                ),
              ),
            ),
          ),
          Divider(
            endIndent: 20.0.w,
            indent: 20.0.w,
          ),
        ],
      ),
    );
  }
}
