class ApiResponseModel<T> {
  ApiResponseModel({
    this.response,
    required this.status,
    required this.message,
    this.httpStatusCode,
    this.exception,
    this.data,
  });

  final String? response;
  final bool status;
  final String message;
  final int? httpStatusCode;
  final Object? exception;
  final T? data;
}
