import 'package:flutter/material.dart';
import 'menu.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Training Flutter',
      theme: ThemeData(

        useMaterial3: true,
      ),

      home: const Menu(),
    );

  }
}
