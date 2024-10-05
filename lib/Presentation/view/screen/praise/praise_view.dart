import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/praise_cubit/praise_cubit.dart';
import 'package:quran/Presentation/view/Widget/praise/custom_bottom_increase_count.dart';
import 'package:quran/Presentation/view/Widget/praise/custom_bottom_reset.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/widget/custom_image_opacity_global.dart';

class PraiseView extends StatelessWidget {
  const PraiseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<PraiseCubit>(),
      child: Scaffold(
        backgroundColor: ColorApp.second,
        appBar: AppBar(
          backgroundColor: ColorApp.second,
        ),
        body: const CustomBody(),
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const Custombottomincreasecount(),
          const Positioned(
            bottom: 10.0,
            child: CustombottomReset(),
          ),
          Positioned(
            bottom: 250.0.h,
            left: 100.w,
            child: const CustomimageopacityGlobal(
              image: ImagesApp.childmuslim,
            ),
          ),
        ],
      ),
    );
  }
}
