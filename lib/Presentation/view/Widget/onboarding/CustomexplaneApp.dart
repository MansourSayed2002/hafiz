import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class CustomexplaneApp extends StatelessWidget {
  const CustomexplaneApp({
    super.key,
    required this.body,
    required this.title,
  });
  final String title;
  final String body;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            title,
            style: TextstyleApp.third30blod,
          ),
          SizedBox(
            height: 20.0.h,
          ),
          SizedBox(
            width: 180.0.w,
            child: Text(
              body,
              textAlign: TextAlign.center,
              style: TextstyleApp.white19normal,
            ),
          ),
        ],
      ),
    );
  }
}
