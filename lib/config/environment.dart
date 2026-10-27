final class Environment._() {
  static const String baseUrl = String.fromEnvironment(
    'BASE_URL',
    defaultValue: 'https://localhost:8080',
  );

  static String url(String path) => '$baseUrl$path';

  static String flagUrl(String code) => url('/flags/${code.toLowerCase()}.png');
}
