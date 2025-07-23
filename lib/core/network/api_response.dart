class ApiResponse {
  final int statusCode;
  final dynamic data;
  final Map<String, dynamic>? headers;

  ApiResponse({
    required this.statusCode,
    required this.data,
    this.headers,
  });
}
