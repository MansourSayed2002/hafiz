import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/reading_cubit/reading_quran_cubit.dart';
import 'package:quran/Presentation/view/Widget/reading_quran/CustomAppBar.dart';
import 'package:quran/Presentation/view/Widget/reading_quran/custom_body.dart';
import 'package:quran/core/constant/animated/animated.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/widget/custom_offline.dart';

class ReadingQuranView extends StatelessWidget {
  const ReadingQuranView({super.key, this.indexpage});

  final int? indexpage;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<ReadingQuranCubit>(),
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(MediaQuery.of(context).size.width, 100.0.h),
            child: const CustomAppBar()),
        body: OfflineBuilder(
          connectivityBuilder: (
            BuildContext context,
            List<ConnectivityResult> connectivity,
            Widget child,
          ) {
            final bool connected =
                !connectivity.contains(ConnectivityResult.none);
            if (connected) {
              return const CustomBodyReading();
            } else {
              return const CustomOffline();
            }
          },
          child: Center(child: Image.asset(Animated.loading)),
        ),
      ),
    );
  }
}
