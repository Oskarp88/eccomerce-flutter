import 'dart:convert'; // Importa la biblioteca para convertir entre objetos Dart y JSON
import 'package:http/http.dart' as http; // Importa la biblioteca http para realizar solicitudes HTTP

class THttpClient {
  static const String _baseUrl = ''; // URL base para todas las solicitudes HTTP

  // Realiza una solicitud HTTP GET al endpoint especificado
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint')); // Solicitud GET
    return _handleResponse(response); // Maneja la respuesta
  }

  // Realiza una solicitud HTTP POST al endpoint especificado con los datos proporcionados
  static Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'), // URL de la solicitud
      headers: {'Content-Type': 'application/json'}, // Establece el tipo de contenido como JSON (error de escritura corregido 'aplication' -> 'application')
      body: json.encode(data), // Convierte los datos a formato JSON
    );
    return _handleResponse(response); // Maneja la respuesta
  }

  // Realiza una solicitud HTTP PUT al endpoint especificado con los datos proporcionados
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'), // URL de la solicitud
      headers: {'Content-Type': 'application/json'}, // Establece el tipo de contenido como JSON (error de escritura corregido 'aplication' -> 'application')
      body: json.encode(data), // Convierte los datos a formato JSON
    );
    return _handleResponse(response); // Maneja la respuesta
  }

  // Realiza una solicitud HTTP DELETE al endpoint especificado
  static Future<Map<String, dynamic>> delete(String endpoint, dynamic data) async {
    final response = await http.delete(
      Uri.parse('$_baseUrl/$endpoint'), // URL de la solicitud
    );
    return _handleResponse(response); // Maneja la respuesta
  }

  // Método interno para manejar la respuesta de todas las solicitudes HTTP
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) { // Verifica si el estado de la respuesta es 200 (éxito)
      return json.decode(response.body); // Decodifica el cuerpo de la respuesta JSON a un mapa de Dart
    } else {
      throw Exception('Failed to load data: ${response.statusCode}'); // Lanza una excepción con el código de error si la solicitud falla
    }
  }
}
