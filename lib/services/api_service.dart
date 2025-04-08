import 'dart:core';
import 'package:dio/dio.dart';
// import 'package:get/get.dart' hide Response;

import '../base/base.dart';
import '../helpers/k_log.dart';

mixin ApiService {
  final _dio = Dio();

  final url = 'https://garmentsniyog.com/api';

  Future<Response?> get({
    required String path,
    Map<String, dynamic>? queryParameters,
    bool authentication = false,
  }) async {
    try {
      // final latLng = await locationC.getCurrentLocation();
      final response = await _dio.get(
        '$url/$path',
        queryParameters: queryParameters,
        options: Options(
          followRedirects: false,
          // will not throw errors
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': authentication
                ? 'Bearer ${Base.loginController.saveToken.value}'
                : null
          },
        ),
      );
      return response;
    } catch (e, s) {
      kError(e);
      kError(s);
      throw ('Something went wrong');
    }
  }

  Future<Response> post({
    required String path,
    dynamic body,
    bool authentication = false,
  }) async {
    try {
      // kLog('${dotenv.env['BASE_URL_KYC']}/$path');
      final response = await _dio.post(
        '$url/$path',
        data: body,
        options: Options(
          followRedirects: false,

          // will not throw errors
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': authentication
                ? 'Bearer ${Base.loginController.saveToken.value}'
                : null
          },
        ),
      );

      return response;
    } catch (e, s) {
      kError(e);
      kError(s);
      throw ('Something went wrong');
    }
  }

  Future<Response> postWithQueryParameters({
    required String path,
    dynamic id,
    dynamic body,
    bool authentication = false,
  }) async {
    try {
      kLog('$url/$path/$id');
      final response = await _dio.request(
        '$url/$path/$id',
        data: body,
        options: Options(
          method: 'POST',
          followRedirects: false,
          validateStatus: (status) => true,
          headers: {
            'Accept': 'application/json',
            'Authorization': authentication
                ? 'Bearer ${Base.loginController.saveToken.value}'
                : null
          },
        ),
      );

      return response;
    } catch (e, s) {
      kError(e);
      kError(s);
      throw ('Something went wrong');
    }
  }

  Future<Response> delete({
    required String path,
    dynamic id,
    bool authentication = false,
  }) async {
    try {
      final response = await _dio.request(
        '$url/$path/$id',
        options: Options(
          method: 'DELETE',
          followRedirects: false,
          validateStatus: (status) => true,
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/x-www-form-urlencoded',
            'Authorization': authentication
                ? 'Bearer ${Base.loginController.saveToken.value}'
                : null
          },
        ),
      );

      return response;
    } catch (e, s) {
      kError(e);
      kError(s);
      throw ('Something went wrong');
    }
  }

  putDynamic({
    required String path,
    dynamic body,
    bool authentication = false,
  }) async {
    try {
      final response = await _dio.put(
        path,
        data: body,
        options: Options(
          followRedirects: false,

          // will not throw errors
          validateStatus: (status) => true,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': authentication ? '' : null
          },
        ),
      );

      return response;
    } catch (e, s) {
      kError(e);
      kError(s);
    }
  }
}
