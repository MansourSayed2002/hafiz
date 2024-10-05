import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/Presentation/view/Widget/home/ItemscontainerGridview.dart';
import 'package:quran/core/class/navigation_app.dart';
import 'package:quran/core/constant/images/images.dart';
import 'package:quran/core/constant/routes/routes.dart';
import 'package:quran/core/constant/string/string.dart';
import 'package:quran/core/theme/color/color.dart';

class CustomPopural extends StatelessWidget {
  const CustomPopural({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              ItemscontainerGridview(
                  color: ColorApp.fourth.withOpacity(.1),
                  image: ImagesApp.group,
                  title: StringApp.quran,
                  color2: ColorApp.fourth.withOpacity(.2),
                  heightimage: 55.0.h,
                  ontap: () {
                    context.pushNamed(Routes.quran);
                  }),
              ItemscontainerGridview(
                  color: ColorApp.fifth.withOpacity(.1),
                  image: ImagesApp.group7,
                  title: StringApp.listening,
                  color2: ColorApp.fifth.withOpacity(.2),
                  heightimage: 87.0.h,
                  ontap: () {}),
              ItemscontainerGridview(
                  color: ColorApp.sixth.withOpacity(.1),
                  image: ImagesApp.group80,
                  title: StringApp.recite,
                  color2: ColorApp.sixth.withOpacity(.2),
                  heightimage: 97.0.h,
                  ontap: () {
                    context.pushNamed(Routes.praise);
                  })
            ],
          )),
    );
  }
}
