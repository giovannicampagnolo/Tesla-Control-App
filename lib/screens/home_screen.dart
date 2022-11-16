import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_animated_app/home_controller.dart';

import '../constanins.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, snapshot) {
          return Scaffold(
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
                      child: GestureDetector(
                        onTap: _controller.updateRightDoorLock,
                        child: AnimatedSwitcher(
                          duration: defaultDuration,
                          transitionBuilder: (child, animation) =>
                              ScaleTransition(
                            scale: animation,
                            child: child,
                          ),
                          child: _controller.isRightDoorLock
                              ? SvgPicture.asset(
                                  "assets/icons/door_lock.svg",
                                  key: ValueKey("lock"),
                                )
                              : SvgPicture.asset(
                                  "assets/icons/door_unlock.svg",
                                  key: ValueKey("unlock"),
                                ),
                        ),
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
