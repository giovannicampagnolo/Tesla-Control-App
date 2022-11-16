import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constanins.dart';

import '../constanins.dart';

class TeslaBottomNavigationBar extends StatelessWidget {
  final int selectedTab;
  final ValueChanged<int> onTap;

  TeslaBottomNavigationBar({
    Key? key,
    required this.selectedTab,
    required this.onTap,
  }) : super(key: key);

  List<String> navIcons = [
    "assets/icons/Lock.svg",
    "assets/icons/Charge.svg",
    "assets/icons/Temp.svg",
    "assets/icons/Tyre.svg",
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedTab,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: List.generate(
        navIcons.length,
        (index) => BottomNavigationBarItem(
          icon: SvgPicture.asset(
            navIcons[index],
            color: index == selectedTab ? primaryColor : Colors.white54,
          ),
          label: "",
        ),
      ),
    );
  }
}
