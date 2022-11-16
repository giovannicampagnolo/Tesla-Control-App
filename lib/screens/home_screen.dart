import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_animated_app/home_controller.dart';
import 'package:tesla_animated_app/widgets/door_lock.dart';

import '../constanins.dart';
import '../widgets/tesla_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, snapshot) {
          return Scaffold(
            bottomNavigationBar: TeslaBottomNavigationBar(),
            body: SafeArea(
              child: LayoutBuilder(builder: (context, constraint) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: constraint.maxHeight * 0.1),
                      child: SvgPicture.asset(
                        "assets/icons/Car.svg",
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      right: constraint.maxWidth * 0.05,
                      child: DoorLock(
                        press: _controller.updateRightDoorLock,
                        isLock: _controller.isRightDoorLock,
                      ),
                    ),
                    Positioned(
                      left: constraint.maxWidth * 0.05,
                      child: DoorLock(
                        press: _controller.updateLeftDoorLock,
                        isLock: _controller.isLeftDoorLock,
                      ),
                    ),
                    Positioned(
                      top: constraint.maxHeight * 0.13,
                      child: DoorLock(
                        press: _controller.updateTopDoorLock,
                        isLock: _controller.isTopDoorLock,
                      ),
                    ),
                    Positioned(
                      bottom: constraint.maxHeight * 0.13,
                      child: DoorLock(
                        press: _controller.updateBottomDoorLock,
                        isLock: _controller.isBottomDoorLock,
                      ),
                    ),
                  ],
                );
              }),
            ),
          );
        });
  }
}
