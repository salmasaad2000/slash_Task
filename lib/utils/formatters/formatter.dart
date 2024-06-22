import 'package:intl/intl.dart';

class TFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'En_Us', symbol: '\$').format(amount);
  }
}