import 'dart:convert';

import 'package:quran/Data/Api/dio_factory.dart';

class Crud {
  Crud._();
  static Crud instanse = Crud._();
  getrequest(pathlink) async {
    try {
      var response = await DioFactory.dio!.get(pathlink);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var responsebody = jsonDecode(response.toString());
        if (responsebody.isNotEmpty) {
          return responsebody;
        } else {
          print('empty');
        }
      } else {
        print(response.statusCode);
      }
    } catch (error) {
      print(error);
    }
  }
}
