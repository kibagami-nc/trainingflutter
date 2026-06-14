import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  // L'URL de ton backend
  static const String _baseUrl = 'https://example.com/api';

  // Envoie un payload JSON vers le backend en POST
  Future<void> sendPayload(Map<String, dynamic> payload) async {
    final url = Uri.parse('$_baseUrl/data');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(payload),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      print('Payload envoyé avec succès : ${response.statusCode}');
    } else {
      print('Erreur lors de l\'envoi : ${response.statusCode}');
    }
  }
}
