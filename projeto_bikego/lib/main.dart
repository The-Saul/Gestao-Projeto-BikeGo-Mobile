import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const EcoMoveApp());
}

class EcoMoveApp extends StatelessWidget {
  const EcoMoveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BikeGo!',
      home: const HomePage(),
    );
  }
}