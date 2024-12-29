import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
      printer: PrettyPrinter(),
      // customise the level based on your need
      level: Level.debug);

  static void debug(dynamic message) => _logger.d(message);
  static void info(dynamic message) => _logger.i(message);
  static void warning(dynamic message) => _logger.w(message);
  static void error(dynamic message, [dynamic error]) =>
      _logger.e(message, error: message, stackTrace: StackTrace.current);
}
