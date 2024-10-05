import 'package:quran/Data/Api/dio_factory.dart';
import 'package:quran/core/di/getit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Services {
  Services._();
  static late SharedPreferences sharedPreferences;

  static setup() async {
    await DioFactory.createDio();
    setupgetit();
    sharedPreferences = await SharedPreferences.getInstance();
  }
}
