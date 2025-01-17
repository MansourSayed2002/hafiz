import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/home_cubit/home_cubit.dart';
import 'package:quran/Presentation/view/Widget/home/CustomcontainerClippath.dart';
import 'package:quran/Presentation/view/screen/reading_quran/reading_quran_view.dart';
import 'package:quran/core/class/navigation_app.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/function/sharedpre.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';
import 'package:quran/core/widget/Custombuttom.dart';

class LastReadSite extends StatelessWidget {
  const LastReadSite({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10.0.h),
          width: MediaQuery.of(context).size.width,
          height: 190.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0.r),
            color: ColorApp.third.withOpacity(0.7),
          ),
        ),
        CustomcontainerClippath(
          clipper: WaveClipperTwo(),
          height: 140.0.h,
          grad: true,
        ),
        Positioned(
          right: 10.0.h,
          child: SizedBox(
            height: 202.0.h,
            child: Image.asset(
              ImagesApp.group78,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 40.0.h,
          left: 30.0.h,
          child: Text(
            StringApp.lastread,
            style: TextstyleApp.white19normal,
          ),
        ),
        Positioned(
          top: 80.0.h,
          left: 40.0.h,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              var controller = HomeCubit.get(context);
              return Text(
                controller.namesurah,
                style: TextstyleApp.white25blod,
              );
            },
          ),
        ),
        Positioned(
          top: 100.0.h,
          left: 30.0.h,
          child: Custombuttom(
            ontap: () {
              if (searchsharedpreint('numberpage') != null) {
                context.push(ReadingQuranView(
                  indexpage: searchsharedpreint('numberpage'),
                ));
              }
            },
            title: StringApp.continu,
            iconData: CupertinoIcons.arrow_right,
          ),
        ),
      ],
    );
  }
}
