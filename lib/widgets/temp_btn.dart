import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constanins.dart';

class TempBtn extends StatelessWidget {
  final String svgSrc, title;
  final bool isActive;
  final VoidCallback press;
  final Color activeColor;

  const TempBtn({
    Key? key,
    required this.svgSrc,
    required this.title,
    this.isActive = false,
    required this.press,
    this.activeColor = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOutBack,
            height: isActive ? 76 : 50,
            width:  isActive ? 76 : 50,
            child: SvgPicture.asset(
              svgSrc,
              color: isActive ? activeColor : Colors.white30,
            ),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 200),
            style: TextStyle(
              fontSize: 16,
              color: isActive ? activeColor : Colors.white30,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
            child: Text(title.toUpperCase(),),
          ),
        ],
      ),
    );
  }
}
