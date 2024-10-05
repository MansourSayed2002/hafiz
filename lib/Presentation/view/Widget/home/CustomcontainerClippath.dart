import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/theme/color/color.dart';

class CustomcontainerClippath extends StatelessWidget {
  const CustomcontainerClippath({
    super.key,
    required this.clipper,
    required this.height,
    this.color,
    required this.grad,
    this.margin,
    this.borderRadius,
  });
  final double height;
  final CustomClipper<Path>? clipper;
  final Color? color;
  final bool grad;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: clipper,
      child: Container(
        margin: margin ?? EdgeInsets.all(10.3.r),
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(30.0.r),
          color: color,
          gradient: grad == true
              ? LinearGradient(
                  colors: [
                    ColorApp.second,
                    ColorApp.third,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [
                    .1,
                    1,
                  ])
              : null,
        ),
      ),
    );
  }
}
