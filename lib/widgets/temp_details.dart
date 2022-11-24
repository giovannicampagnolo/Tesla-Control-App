import 'package:flutter/material.dart';
import 'package:tesla_animated_app/widgets/temp_btn.dart';

import '../constanins.dart';
import '../home_controller.dart';

class TempDetails extends StatelessWidget {
  final HomeController _controller;

  const TempDetails({
    Key? key,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TempBtn(
              isActive: _controller.isCoolSelected,
              svgSrc: "assets/icons/coolShape.svg",
              title: "Cool",
              press: _controller.updateIsCoolSelectedTab,
            ),
            const SizedBox(width: defaultPadding),
            TempBtn(
              isActive: !_controller.isCoolSelected,
              svgSrc: "assets/icons/heatShape.svg",
              title: "Heat",
              press: _controller.updateIsCoolSelectedTab,
              activeColor: redColor,
            ),
          ],
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(
            Icons.arrow_drop_up,
            size: 48,
          ),
        ),
        Text(
          "29" + "\u2103",
          style: TextStyle(fontSize: 86),
        ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(
            Icons.arrow_drop_down,
            size: 48,
          ),
        ),
        Text("CURRENT TEMPERATURE"),
        const SizedBox(height: defaultPadding),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "inside".toUpperCase(),
                ),
                Text(
                  "20" + "\u2103",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "inside".toUpperCase(),
                ),
                Text(
                  "20" + "\u2103",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
