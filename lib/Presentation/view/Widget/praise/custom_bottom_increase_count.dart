import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/Cubit/praise_cubit/praise_cubit.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class Custombottomincreasecount extends StatelessWidget {
  const Custombottomincreasecount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getit<PraiseCubit>().increasecounter();
      },
      child: Container(
          width: 300.w,
          height: 300.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: ColorApp.second,
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorApp.third,
                width: 10.0.w,
              )),
          child: BlocBuilder<PraiseCubit, PraiseState>(
            builder: (context, state) {
              if (state is IncreaseCounter) {
                return stateisincreasecounter(state);
              }
              return stateisnotincreasecounter();
            },
          )),
    );
  }

  Text stateisnotincreasecounter() {
    return Text(
      '0',
      style: TextstyleApp.white25blod,
    );
  }

  Text stateisincreasecounter(IncreaseCounter state) {
    return Text(
      '${state.counter}',
      style: TextstyleApp.white25blod,
    );
  }
}
