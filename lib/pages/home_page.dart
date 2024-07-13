import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: _titlePage(),
        ),
      ),
    );
  }

  Widget _titlePage() {
    return const Text(
      "GoPlanet!",
      style: TextStyle(
        color: Colors.white,
        fontSize: 60,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astronaut_moon.jpg"),
        ),
      ),
    );
  }
}
