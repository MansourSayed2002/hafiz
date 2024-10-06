import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/theme/color/color.dart';

class TestView extends StatelessWidget {
  const TestView({super.key, required this.indexpage});
  final int indexpage;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(
      initialPage: indexpage,
    );
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(5.0.h),
            padding: EdgeInsets.all(10.0.h),
            color: ColorApp.third.withOpacity(.1),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Directionality(
                textDirection: TextDirection.rtl,
                child: PageView.builder(
                    controller: controller,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        child: const Text(""),
                      );
                    }))));
  }
}
