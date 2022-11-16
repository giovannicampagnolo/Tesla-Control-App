import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TeslaBottomNavigationBar extends StatelessWidget {
  TeslaBottomNavigationBar({Key? key}) : super(key: key);

  List<String> navIcons = [
    "assets/icons/Lock.svg",
    "assets/icons/Charge.svg",
    "assets/icons/Temp.svg",
    "assets/icons/Tyre.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: List.generate(
        navIcons.length,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
            navIcons[index],
          ),
          label: "",
        ),
      ),
    );
  }
}
