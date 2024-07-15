import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
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
