import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/view/Widget/home/CustomPopural.dart';
import 'package:quran/Presentation/view/Widget/home/LastReadSite.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/theme/color/color.dart';
import 'package:quran/core/theme/textstyle/textstyle.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          StringApp.hafiz,
          style: TextstyleApp.black25blod,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.search,
                size: 30.0,
              ))
        ],
      ),
      body: const Custombody(),
    );
  }
}

class Custombody extends StatelessWidget {
  const Custombody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LastReadSite(),
          Padding(
            padding: EdgeInsets.only(left: 10.0.h, top: 20.0.h),
            child: Text(
              StringApp.popular,
              style: TextstyleApp.primary20blod,
            ),
          ),
          const CustomPopural()
        ],
      ),
    );
  }
}
