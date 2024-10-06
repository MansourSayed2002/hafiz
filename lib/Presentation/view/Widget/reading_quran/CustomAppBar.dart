import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/reading_cubit/reading_quran_cubit.dart';
import 'package:quran/Presentation/view/Widget/home/CustomcontainerClippath.dart';
import 'package:quran/Presentation/view/Widget/reading_quran/custom_child_containerbar.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';
import 'package:quran/core/widget/custom_image_opacity_global.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  ColorApp.second,
                  ColorApp.third,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [
                  .1,
                  1,
                ]),
          ),
          child: const CustomChildcontainerbar(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CustomcontainerClippath(
            clipper: WaveClipperTwo(
              flip: true,
              reverse: true,
            ),
            height: 100.0.h,
            grad: false,
            margin: EdgeInsets.all(1.0.h),
            color: ColorApp.third.withOpacity(.1),
            borderRadius: BorderRadius.zero,
          ),
        ),
        Positioned(
          right: -50.0.w,
          child: CustomimageopacityGlobal(
            image: ImagesApp.group78,
            fit: BoxFit.fill,
            height: 202.0.h,
          ),
        ),
        BlocBuilder<ReadingQuranCubit, ReadingQuranState>(
          builder: (context, state) {
            var controller = ReadingQuranCubit.get(context);
            return Positioned(
              bottom: 10.0.h,
              right: 10.0.h,
              child: Text(
                '${controller.currentindex + 1} ${StringApp.page}',
                style: TextstyleApp.white19normal,
              ),
            );
          },
        ),
      ],
    );
  }
}
