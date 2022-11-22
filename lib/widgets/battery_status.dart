import 'package:flutter/material.dart';

import '../constanins.dart';

class BatteryStatus extends StatelessWidget {
  final BoxConstraints constraint;
  const BatteryStatus({
    Key? key,
    required this.constraint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "220 mi",
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: Colors.white),
        ),
        Text(
          "62%",
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        Text(
          "Charging".toUpperCase(),
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "18 min remaining",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: constraint.maxHeight * 0.14),
        DefaultTextStyle(
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("22 mi/hr"),
              Text("232 v"),
            ],
          ),
        ),
        const SizedBox(height: defaultPadding),
      ],
    );
  }
}
