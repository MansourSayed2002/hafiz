import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/reading_cubit/reading_quran_cubit.dart';
import 'package:quran/Presentation/view/Widget/reading_quran/custom_style_ayah.dart';
import 'package:quran/core/class/handling_data_view.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/function/sharedpre.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class CustomBodyReading extends StatefulWidget {
  const CustomBodyReading({super.key});

  @override
  State<CustomBodyReading> createState() => _CustomBodyReadingState();
}

class _CustomBodyReadingState extends State<CustomBodyReading> {
  @override
  void initState() {
    getit<ReadingQuranCubit>().getdata();
    WakelockPlus.enable();
    super.initState();
  }

  @override
  void dispose() {
    WakelockPlus.disable();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadingQuranCubit, ReadingQuranState>(
        builder: (context, state) {
      var controller = ReadingQuranCubit.get(context);
      return HandlingDataView(
        statusApp: controller.statusApp,
        widget: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            margin: EdgeInsets.all(5.0.h),
            padding: EdgeInsets.all(10.0.h),
            color: ColorApp.third.withOpacity(.1),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  getit<ReadingQuranCubit>().getindex(value);

                  getit<ReadingQuranCubit>().getnamesurah(
                    value + 1,
                  );
                  addSharedpreint('numberpage', value);
                },
                itemCount: state is ReadingQuranSuccess
                    ? controller.ayah.last.page
                    : 0,
                itemBuilder: (context, index) {
                  return CustomStyleAyah(
                    index: index,
                    allayah: controller.ayah,
                  );
                }),
          ),
        ),
      );
    });
  }
}
