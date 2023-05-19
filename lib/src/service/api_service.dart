import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';

class ApiService {
  final String baseUrl;
  late Dio dio;

  ApiService({required this.baseUrl}) {
    dio = Dio(BaseOptions(baseUrl: baseUrl, contentType: 'application/json'));
    addInterceptor();
  }

  void addInterceptor() {
    dio.interceptors.add(LoggyDioInterceptor());
  }

  Future<Response> getRequest(
      String endpoint, Map<String, dynamic> query) async {
    try {
      Response response;
      response = await dio.get(
        endpoint,
        queryParameters: query,
      );
      return response;
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(e);
    }
  }
}
