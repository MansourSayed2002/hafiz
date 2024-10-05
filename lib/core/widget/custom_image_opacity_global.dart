import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomimageopacityGlobal extends StatelessWidget {
  const CustomimageopacityGlobal({
    super.key,
    this.height,
    required this.image,
    this.opacity,
    this.width,
    this.fit,
  });
  final double? height;
  final double? width;
  final String image;
  final BoxFit? fit;
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity ?? .1,
      child: SizedBox(
          height: height ?? 300.h,
          width: width ?? 200.0.w,
          child: Image.asset(
            image,
            fit: fit,
          )),
    );
  }
}
