import 'package:dio/dio.dart';
import 'package:quran/core/constant/links/links.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static createDio() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: LinksApp.baseurl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(
        seconds: 20,
      ),
      receiveTimeout: const Duration(
        seconds: 20,
      ),
    );
    if (dio == null) {
      dio = Dio(baseOptions);
      return dio;
    } else {
      print('dio not null');
      return dio;
    }
  }
}
