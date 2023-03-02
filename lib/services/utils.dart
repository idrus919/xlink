import 'package:intl/intl.dart';

class Utils {
  static String currency(int? idr, {bool isNegative = false}) {
    if (idr == null) return '0';
    final currency = NumberFormat("###,###.###", "ID").format(idr);
    return '${isNegative ? "-" : ""}$currency';
  }
}