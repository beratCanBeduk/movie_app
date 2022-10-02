class ServerException implements Exception {
  final String message;
  int? statusCode;
  String? url;

  ServerException({
    required this.message,
    this.statusCode,
    this.url,
  });

  @override
  String toString() =>
      'Server Exception(message: $message, statusCode: $statusCode, url: $url)';
}
