import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/reading_quran_cubit.dart';
import 'package:quran/Presentation/view/Widget/quran/CustomAppBar.dart';
import 'package:quran/Presentation/view/Widget/quran/custom_style_ayah.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/theme/color/color.dart';

class ReadingQuranView extends StatelessWidget {
  const ReadingQuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<ReadingQuranCubit>()..getayahs(),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 100.0.h),
            child: const CustomAppBar()),
        body: const CustomBody(),
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadingQuranCubit, ReadingQuranState>(
        builder: (context, state) {
      if (state is ReadingQuranLoading) {
        return Container(
          margin: EdgeInsets.all(5.0.h),
          padding: EdgeInsets.all(10.0.h),
          color: ColorApp.third.withOpacity(.1),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: PageView.builder(
                controller: getit<ReadingQuranCubit>().pageController,
                onPageChanged: (value) {
                  getit<ReadingQuranCubit>().getindex(value);
                },
                itemCount: state.ayah[state.ayah.length - 1].page,
                //  lis[lis.length - 1]['ayahs']
                //     [lis[lis.length - 1]['ayahs'].length - 1]['page'],
                itemBuilder: (context, index) {
                  for (int w = 0; w <= state.quran.length - 1; w++) {
                    print(state.quran[w].surahs);
                  }
                  return CustomStyleAyah(
                    index: index,
                    allayah: state.ayah,
                    allquran: state.quran,
                  );
                }),
          ),
        );
      } else {
        return const Text('Error');
      }
    });
  }
}
