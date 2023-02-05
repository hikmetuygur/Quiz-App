import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [ProgressBar()],
            ),
          ),
        ),
      ],
    );
  }
}

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(children: [
        LayoutBuilder(
          builder: (context, Constraints) => Container(
            width: Constraints.maxWidth * 0.5,
            decoration: BoxDecoration(
              gradient: kPrimaryGradient,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Positioned.fill(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("18 sec"),
              SvgPicture.asset("assets/icons/clock.svg")
            ],
          ),
        ))
      ]),
    );
  }
}
