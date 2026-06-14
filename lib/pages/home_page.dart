import 'package:flutter/material.dart';
import '../services/api_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final api = ApiService();

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Le payload à envoyer au backend
            final payload = {
              'name': 'test',
              'message': 'test1',
            };
            api.sendPayload(payload);
          },
          child: const Text('Envoyer'),
        ),
      ),
    );
  }
}
