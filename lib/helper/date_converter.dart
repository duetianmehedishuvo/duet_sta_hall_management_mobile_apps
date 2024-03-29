// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class DateConverter {
  static String formatDate(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  static String estimatedDate(String dateTime) {
    // return DateFormat('yyyy-MM-dd').format(dateTime);
    return DateFormat('yyyy-MM-dd').format(DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").parse(dateTime));
  }

  static DateTime convertStringToDatetime(String dateTime) {
    return DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").parse(dateTime);
  }

  static DateTime isoStringToLocalDate(String dateTime) {
    return DateFormat('yyyy-MM-ddTHH:mm:ss.SSS').parse(dateTime, true).toLocal();
  }

  static String isoStringToLocalTimeOnly(String dateTime) {
    return DateFormat(' hh:mm aa').format(isoStringToLocalDate(dateTime));
  }

  static String isoStringToLocalAMPM(String dateTime) {
    return DateFormat('a').format(isoStringToLocalDate(dateTime));
  }

  static String isoStringToLocalDateOnly(String dateTime) {
    return DateFormat('dd MMM yyyy').format(isoStringToLocalDate(dateTime));
  }

  static String localDateToIsoString(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy').format(dateTime.toUtc());
  }

  static String localDateToIsoString2(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd hh:mm a').format(dateTime);
  }

  static String localDateToString(String dateTime) {
    return DateFormat('dd/MM/yyyy hh:mm a').format(DateFormat("yyyy-MM-ddTHH:mm:ss.SSS").parse(dateTime));
  }

  static String localDateToString1(String dateTime) {
    return DateFormat('dd/MM/yyyy hh:mm a').format(DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateTime));
  }
  static String localDate(String dateTime) {
    return DateFormat('dd/MM/yyyy').format(DateFormat("yyyy-MM-dd HH:mm:ss").parse(dateTime));
  }
  static String localTime(String dateTime) {
    return DateFormat('HH:mm a').format(DateFormat("yyyy-MM-dd HH:mm a").parse(dateTime));
  }

  static String convertTimeToTime(String time) {
    return DateFormat('hh:mm a').format(DateFormat('hh:mm:ss').parse(time));
  }

  static String isoStringToDatePushServer(String dateTime) {
    return DateFormat('yyyy-MM-dd').format(isoStringToLocalDate(dateTime));
  }

  static DateTime isoStringToDateGetServer(String dateTime) {
    return DateFormat('dd-MM-yyyy').parse(dateTime, true).toLocal();
  }
}
