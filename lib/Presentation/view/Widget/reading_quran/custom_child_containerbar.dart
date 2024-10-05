import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/reading_cubit/reading_quran_cubit.dart';
import 'package:quran/core/class/navigation_app.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

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
                onPressed: () {
                  context.pop();
                },
                icon: Icon(
                  CupertinoIcons.arrow_left,
                  color: ColorApp.white,
                  size: 30.0.h,
                )),
            SizedBox(
              width: 80.0.w,
            ),
            BlocBuilder<ReadingQuranCubit, ReadingQuranState>(
              builder: (context, state) {
                if (state is ReadingQuranSuccess) {
                  return Text(
                    "${getit<ReadingQuranCubit>().namesurah}",
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
