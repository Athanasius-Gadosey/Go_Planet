import 'package:flutter/material.dart';
import 'package:go_planet/pages/home_page.dart';

void main() {
  runApp(const PlanetApp());
}

class PlanetApp extends StatelessWidget {
  const PlanetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoPlanet',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(25, 50, 26, 1.0),
      ),
      home: const HomePage(),
    );
  }
}
