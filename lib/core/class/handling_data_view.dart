import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quran/core/constant/animated/animated.dart';
import 'package:quran/core/constant/enum/state_app.dart';

class HandlingDataView extends StatelessWidget {
  const HandlingDataView(
      {super.key, required this.statusApp, required this.widget});
  final Widget widget;
  final StatusApp statusApp;
  @override
  Widget build(BuildContext context) {
    return statusApp == StatusApp.loading
        ? Center(child: Image.asset(Animated.loading))
        : statusApp == StatusApp.error
            ? Center(child: Lottie.asset(Animated.lottieserver404))
            : widget;
  }
}
