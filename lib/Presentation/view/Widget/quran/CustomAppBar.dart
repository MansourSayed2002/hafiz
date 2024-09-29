import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/reading_quran_cubit.dart';
import 'package:quran/Presentation/view/Widget/home/CustomcontainerClippath.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

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
            color: ColorApp.third.withOpacity(.1),
          ),
        ),
        Positioned(
          right: -50.0.w,
          child: Opacity(
            opacity: .1,
            child: SizedBox(
              height: 202.0.h,
              child: Image.asset(
                ImagesApp.group78,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        BlocBuilder<ReadingQuranCubit, ReadingQuranState>(
          builder: (context, state) {
            if (state is ReadingQuranLoading) {
              return Positioned(
                bottom: 10.0.h,
                right: 10.0.h,
                child: Text(
                  '${state.index + 1} ${StringApp.page}',
                  style: TextstyleApp.white19normal,
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ],
    );
  }
}

class CustomChildcontainerbar extends StatelessWidget {
  const CustomChildcontainerbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.arrow_left,
                  color: ColorApp.white,
                  size: 30.0.h,
                )),
            SizedBox(
              width: 120.0.w,
            ),
            BlocBuilder<ReadingQuranCubit, ReadingQuranState>(
              builder: (context, state) {
                if (state is ReadingQuranLoading) {
                  return Text(
                    'state.quran}',
                    style: TextstyleApp.white25blod,
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
        Divider(
          indent: 80.0.w,
          endIndent: 80.0.w,
        ),
        Text(
          StringApp.elbasmala,
          style: TextstyleApp.white19normal.copyWith(
            fontFamily: 'Amiri',
          ),
        ),
      ],
    );
  }
}
