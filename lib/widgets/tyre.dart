import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Widget> tyres(BoxConstraints constraint){
  return[
    Positioned(
      left: constraint.maxWidth * 0.2,
      top: constraint.maxHeight * 0.22,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      right: constraint.maxWidth * 0.2,
      top: constraint.maxHeight * 0.22,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      left: constraint.maxWidth * 0.2,
      top: constraint.maxHeight * 0.63,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
    Positioned(
      right: constraint.maxWidth * 0.2,
      top: constraint.maxHeight * 0.63,
      child: SvgPicture.asset("assets/icons/FL_Tyre.svg"),
    ),
  ];
}