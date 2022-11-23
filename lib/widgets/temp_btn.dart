import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constanins.dart';

class TempBtn extends StatelessWidget {
  final String svgSrc, title;
  final bool isActive;
  final VoidCallback press;

  const TempBtn({
    Key? key,
    required this.svgSrc,
    required this.title,
    this.isActive = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          child: SvgPicture.asset(
            svgSrc,
            color: Colors.white30,
          ),
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 16,
            color: Colors.white30,
          ),
        ),
      ],
    );
  }
}
