import 'package:intl/intl.dart';

class Formatter {
  static String formatDate(DateTime? date){
    date ??=  DateTime.now();
    return DateFormat('dd-MMM-yyy').format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length == 10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';
    }else if(phoneNumber.length == 11){
      return '(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';
    }

    return phoneNumber;
  }
 
  static String internationFormatPhoneNumber(String phoneNumber) {
  var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), ''); // Elimina caracteres no numéricos
  
  String countryCode = '+${digitsOnly.substring(0, 2)}'; // Obtiene el código del país
  digitsOnly = digitsOnly.substring(2); // Elimina el código de país de los dígitos

  final formattedNumber = StringBuffer();
  formattedNumber.write('($countryCode) '); // Agrega el código de país con paréntesis

  int i = 0;
  while (i < digitsOnly.length) {
    int groupLength = 2;

    // Para números de EE.UU. o países con código +1, toma los primeros 3 números
    if (i == 0 && countryCode == '+1') {
      groupLength = 3;
    }

    // Calcula el índice de fin de la subcadena
    int end = i + groupLength; // <-- Cambiado de "1 + groupLength" a "i + groupLength"

    // Evita errores si 'end' excede la longitud de 'digitsOnly'
    if (end > digitsOnly.length) {
      end = digitsOnly.length;
    }

    // Extrae la subcadena de los dígitos
    formattedNumber.write(digitsOnly.substring(i, end));

    // Agrega un espacio si aún hay más números
    if (end < digitsOnly.length) {
      formattedNumber.write(' ');
    }

    // Avanza al siguiente grupo
    i = end; // <-- Ahora 'i' se incrementa correctamente
  }

  return formattedNumber.toString(); // <-- Retorna el resultado final
}

}