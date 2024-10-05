import 'dart:convert';

import 'package:quran/Data/Api/dio_factory.dart';
import 'package:quran/core/class/api_status.dart';
import 'package:quran/core/constant/enum/state_app.dart';

class Crud {
  Crud._();
  static Crud instanse = Crud._();
  getrequest(pathlink) async {
    try {
      var response = await DioFactory.dio!.get(pathlink);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var responsebody = jsonDecode(response.toString());
        if (responsebody.isNotEmpty) {
          return ApiStatus.success(responsebody);
        } else {
          return ApiStatus.failure(StatusApp.nodata);
        }
      } else {
        return ApiStatus.failure(StatusApp.error);
      }
    } catch (error) {
      print(error);
    }
  }
}
