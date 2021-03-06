import 'package:flutter/material.dart';
import 'package:flutter_app1/themes/tema.dart';

import 'screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: tema,
      home: const InitialScreen(),
    );
  }
}
