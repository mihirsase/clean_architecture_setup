import 'package:shop_me/core/network/api_response.dart';

abstract class ApiClient {
  Future<ApiResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
  });

  Future<ApiResponse> post(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  });

  Future<ApiResponse> put(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  });

  Future<ApiResponse> delete(
    String path, {
    Map<String, String>? headers,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  });
}
