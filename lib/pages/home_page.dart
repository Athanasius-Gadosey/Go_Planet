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
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titlePage(),
              _locationDropDownWidget(),
            ],
          ),
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

  Widget _locationDropDownWidget() {
    List<String> _items = [
      'Mike Hope Substation Eng',
      'Habib Kadiri Engineer',
      'Jamal Abdul Lt',
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Color.fromRGBO(25, 50, 26, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        value: _items.first,
        onChanged: (_) {},
        items: _items
            .map(
              (e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ),
            )
            .toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(25, 50, 26, 1.0),
        style: const TextStyle(color: Colors.white70, fontSize: 16),
      ),
    );
  }
}
