import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_me/core/constants/api_constants.dart';
import 'package:shop_me/core/network/api_client.dart';
import 'package:shop_me/core/network/api_response.dart';

@Injectable(as: ApiClient)
class DioClient implements ApiClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio.options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    );
    _dio.interceptors.add(
      LogInterceptor(requestBody: true, responseBody: true),
    );
  }

  @override
  Future<ApiResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await _dio.get(
      path,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return _toApiResponse(res);
  }

  @override
  Future<ApiResponse> post(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await _dio.post(
      path,
      data: body,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return _toApiResponse(res);
  }

  @override
  Future<ApiResponse> put(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await _dio.put(
      path,
      data: body,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return _toApiResponse(res);
  }

  @override
  Future<ApiResponse> delete(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final res = await _dio.delete(
      path,
      data: body,
      queryParameters: queryParameters,
      options: Options(headers: headers),
    );
    return _toApiResponse(res);
  }

  ApiResponse _toApiResponse(Response response) {
    return ApiResponse(
      statusCode: response.statusCode ?? 0,
      data: response.data,
      headers: response.headers.map,
    );
  }
}
