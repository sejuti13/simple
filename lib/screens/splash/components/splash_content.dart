import 'package:app/size_config.dart';
import 'package:flutter/material.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Simple",
          style: TextStyle(
            fontSize: SizeConfig.getProportionateScreenWidth(30),
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: SizeConfig.getProportionateScreenHeight(265),
          width: SizeConfig.getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}

