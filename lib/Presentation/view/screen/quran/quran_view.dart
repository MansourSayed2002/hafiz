import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/Presentation/Cubit/quran_cubit/quran_cubit.dart';
import 'package:quran/Presentation/Cubit/reading_cubit/reading_quran_cubit.dart';
import 'package:quran/Presentation/view/Widget/quran/custom_Items_surahs.dart';
import 'package:quran/Presentation/view/screen/reading_quran/reading_quran_view.dart';
import 'package:quran/core/class/handling_data_view.dart';
import 'package:quran/core/class/navigation_app.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/theme/color/color.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<QuranCubit>()..getsurahs(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorApp.white,
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
    return BlocBuilder<QuranCubit, QuranState>(
      builder: (context, state) {
        var controller = QuranCubit.get(context);
        return HandlingDataView(
            statusApp: controller.statusApp,
            widget: ListView.builder(
                itemCount: controller.responsequran.length,
                itemBuilder: (context, index) {
                  return CustomItemsSurahs(
                    leading: '${controller.responsequran[index].number}',
                    title: "${controller.responsequran[index].englishName}",
                    subtitle:
                        '${controller.responsequran[index].ayahs!.length}',
                    trailing: controller.responsequran[index].name!
                        .replaceAll('سُورَةُ ', ''),
                    ontap: () {
                      getit<ReadingQuranCubit>().currentindex =
                          controller.responsequran[index].ayahs![0].page! - 1;
                      context.push(ReadingQuranView(
                        indexpage: index,
                      ));
                    },
                  );
                }));
      },
    );
  }
}
