import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:go_planet/widgets/custom_dropdown_button.dart';

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
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titlePage(),
                  _bookPlaneWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _titlePage() {
    return const Text(
      "GoPlanet!👩‍🚀",
      style: TextStyle(
        color: Colors.white,
        fontSize: 60,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/astronaut_moon.jpg"),
        ),
      ),
    );
  }

  Widget _bookPlaneWidget() {
    return Container(
      height: _deviceHeight * 0.28,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _locationDropDownWidget(),
          _travellersInformationWidget(),
          _planeButton(),
        ],
      ),
    );
  }

  Widget _locationDropDownWidget() {
    return CustomDropDownButtonClass(values: const [
      'Mike Hope Substation Eng',
      'Habib Kadiri Engineer',
      'Jamal Abdul Lt',
    ], width: _deviceWidth);
  }

  Widget _travellersInformationWidget() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomDropDownButtonClass(
            values: const ['1', '2', '3', '4'],
            width: _deviceWidth * 0.45,
          ),
          CustomDropDownButtonClass(
            values: const ['First', 'Private', 'Business', 'Economy'],
            width: _deviceWidth * 0.40,
          ),
        ]);
  }

  Widget _planeButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Plane",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
