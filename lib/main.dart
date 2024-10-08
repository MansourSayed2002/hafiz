import 'package:flutter/material.dart';
import 'package:quran/Quran_app.dart';
import 'package:quran/core/class/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Services.setup();
  runApp(const QuarnApp());
}
