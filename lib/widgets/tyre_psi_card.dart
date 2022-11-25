import 'package:flutter/material.dart';

import '../constanins.dart';

class TyrePsiCard extends StatelessWidget {
  final bool isBottomTwoTyre;

  const TyrePsiCard({
    Key? key,
    required this.isBottomTwoTyre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: Colors.white10,
          border: Border.all(
            color: primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          psiText(context),
          const SizedBox(height: defaultPadding),
          Text(
            "41\u2103",
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
          Text(
            "Low".toUpperCase(),
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
          ),
          Text(
            "Pressure".toUpperCase(),
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

Text psiText(BuildContext context){
  return Text.rich(
    TextSpan(
      text: "23.6",
      style: Theme.of(context).textTheme.headline4!.copyWith(
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      children: [
        TextSpan(
          text: "psi",
          style: TextStyle(fontSize: 24),
        ),
      ],
    ),
  );
}