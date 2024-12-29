import 'package:intl/intl.dart';

class Formatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'en_IN',
      symbol: '₹',
    ).format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAllMapped(
      RegExp(r'(\d{5})(\d{5})'),
      (match) => '+91-${match[1]}-${match[2]}',
    );
  }

  static String formatCurrencyInternational(double amount,
      {String locale = 'en_US', String symbol = '\$'}) {
    return NumberFormat.currency(
      locale: locale,
      symbol: symbol,
    ).format(amount);
  }

  static String formatPhoneNumberInternational(
      String phoneNumber, String countryCode) {
    return phoneNumber.replaceAllMapped(
      RegExp(r'(\d{1,4})(\d{1,4})(\d{1,4})'),
      (match) => '+$countryCode-${match[1]}-${match[2]}-${match[3]}',
    );
  }
}
