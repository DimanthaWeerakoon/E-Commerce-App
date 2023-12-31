import 'package:intl/intl.dart';

class EFormatter {


  // Customize the date format as needed
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  // Customize the currency locale and symbol as needed
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formantPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit LK phone number format: (123) 456 7890
    if(phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 9) {
      return '(${phoneNumber.substring(0, 2)}) ${phoneNumber.substring(2, 5)} ${phoneNumber.substring(5)}';
    }
    //Add more custom phone number formatting logic for different formats if needed
    return phoneNumber;
  }

  //// Not fully tested
  // static String internationalFormatPhoneNumber(String phoneNumber) {
  //   // Remove any non-digit characters from the phone number
  //   var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

  //   //Extract the country code from the digitsOnly
  //   String countryCode = '+${digitsOnly.substring(0, 2)}';
  //   digitsOnly = digitsOnly.substring(2);


  //   //Add the remaining digits with proper formatting
  //   final formattedNumber = StringBuffer();
  //   formattedNumber.write('($countryCode)');

  //   int i = 0;
  //   while (i < digitsOnly.length) {
  //     int groupLength = 2;
  //     if (i == 0 && countryCode == '+1') {
  //       groupLength = 3;
  //     }

  //     int end = i + groupLength;
  //     formattedNumber.write(digitsOnly.substring(i, end));


  //     if(end < digitsOnly.length) {
  //       formattedNumber.write(' ');
  //     }

  //     i = end;
  //   }












  }




