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
          child: _locationDropDownWidget(),
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
    List<DropdownMenuItem<String>> _items = [
      'Mike Hope Substation',
      'Habib Kadiri Engineer',
      'Jamal Abdul',
    ]
        .map((e) => DropdownMenuItem(
              child: Text(e),
              value: e,
            ))
        .toList();
    return Container(
      child: DropdownButton(
        onChanged: (_) {},
        items: _items,
      ),
    );
  }
}
