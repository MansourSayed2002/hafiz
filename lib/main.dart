import 'package:flutter/material.dart';
import 'package:quran/Data/Api/dio_factory.dart';
import 'package:quran/Quran_app.dart';
import 'package:quran/core/di/getit.dart';
import 'package:quran/core/routing/routing.dart';

void main() async {
  await DioFactory.createDio();
  setupgetit();
  runApp(QuarnApp(
    routingapp: Routingapp(),
  ));
}
