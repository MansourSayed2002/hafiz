import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/reading_cubit/reading_quran_cubit.dart';
import 'package:quran/Presentation/view/Widget/reading_quran/CustomAppBar.dart';
import 'package:quran/Presentation/view/Widget/reading_quran/custom_style_ayah.dart';
import 'package:quran/core/class/handling_data_view.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/function/sharedpre.dart';
import 'package:quran/core/theme/color/color.dart';

class ReadingQuranView extends StatelessWidget {
  const ReadingQuranView({super.key, this.indexpage});

  final int? indexpage;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getit<ReadingQuranCubit>()..getdata(),
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 100.0.h),
              child: const CustomAppBar()),
          body: InkWell(
              onTap: () {
                getit<ReadingQuranCubit>().navigationbar();
              },
              child: const CustomBody()),
        ));
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({
    super.key,
  });

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
