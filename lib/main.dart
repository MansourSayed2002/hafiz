import 'package:flutter/material.dart';
import 'package:quran/Quran_app.dart';
import 'package:quran/core/class/services.dart';
import 'package:quran/core/routing/routing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Services.setup();
  runApp(QuarnApp(
    routingapp: Routingapp(),
  ));
}
