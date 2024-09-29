import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/view/Widget/home/CustomcontainerClippath.dart';
import 'package:quran/core/constant/List/popularlist.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class CustomPopural extends StatelessWidget {
  const CustomPopural({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          itemCount: popularlist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => Itemscontainer(
            color2: popularlist[index].color2,
            color: popularlist[index].color,
            image: popularlist[index].image,
            title: popularlist[index].title,
            heightimage: popularlist[index].heightimage,
          ),
        ),
      ),
    );
  }
}

class Itemscontainer extends StatelessWidget {
  const Itemscontainer({
    super.key,
    required this.color,
    required this.color2,
    required this.image,
    required this.title,
    required this.heightimage,
  });
  final String image;
  final String title;
  final Color color;
  final Color color2;
  final double heightimage;
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
