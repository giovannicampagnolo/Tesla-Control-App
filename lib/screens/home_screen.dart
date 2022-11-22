import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_animated_app/home_controller.dart';
import 'package:tesla_animated_app/widgets/door_lock.dart';

import '../constanins.dart';
import '../widgets/tesla_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final HomeController _controller = HomeController();

  late AnimationController _batteryAnimationController;
  late Animation<double> _animationBattery;

  void setupBatteryAnimation() {
    _batteryAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    _animationBattery = CurvedAnimation(
      parent: _batteryAnimationController,
      curve: Interval(0.0, 0.5),
    );
  }

  @override
  void initState() {
    setupBatteryAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _batteryAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, snapshot) {
          return Scaffold(
            bottomNavigationBar: TeslaBottomNavigationBar(
              onTap: (index) {
                _controller.onBottomNavigationTabChange(index);
                print(index);
              },
              selectedTab: _controller.selectedBottomTab,
            ),
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
                    AnimatedPositioned(
                      duration: defaultDuration,
                      right: _controller.selectedBottomTab == 0
                          ? constraint.maxWidth * 0.05
                          : constraint.maxWidth / 2,
                      child: AnimatedOpacity(
                        duration: defaultDuration,
                        opacity: _controller.selectedBottomTab == 0 ? 1 : 0,
                        child: DoorLock(
                          press: _controller.updateRightDoorLock,
                          isLock: _controller.isRightDoorLock,
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: defaultDuration,
                      left: _controller.selectedBottomTab == 0
                          ? constraint.maxWidth * 0.05
                          : constraint.maxWidth / 2,
                      child: AnimatedOpacity(
                        duration: defaultDuration,
                        opacity: _controller.selectedBottomTab == 0 ? 1 : 0,
                        child: DoorLock(
                          press: _controller.updateLeftDoorLock,
                          isLock: _controller.isLeftDoorLock,
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: defaultDuration,
                      top: _controller.selectedBottomTab == 0
                          ? constraint.maxWidth * 0.13
                          : constraint.maxWidth / 2,
                      child: AnimatedOpacity(
                        duration: defaultDuration,
                        opacity: _controller.selectedBottomTab == 0 ? 1 : 0,
                        child: DoorLock(
                          press: _controller.updateTopDoorLock,
                          isLock: _controller.isTopDoorLock,
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: defaultDuration,
                      bottom: _controller.selectedBottomTab == 0
                          ? constraint.maxWidth * 0.13
                          : constraint.maxWidth / 2,
                      child: AnimatedOpacity(
                        duration: defaultDuration,
                        opacity: _controller.selectedBottomTab == 0 ? 1 : 0,
                        child: DoorLock(
                          press: _controller.updateBottomDoorLock,
                          isLock: _controller.isBottomDoorLock,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/Battery.svg",
                      width: constraint.maxWidth * 0.45,
                    )
                  ],
                );
              }),
            ),
          );
        });
  }
}
