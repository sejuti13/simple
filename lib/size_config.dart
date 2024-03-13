import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData; // Add ? to make it nullable
  static double? screenWidth; // Add ? to make them nullable
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width; // Add ! to ensure _mediaQueryData is not null
    screenHeight = _mediaQueryData!.size.height; // Add ! to ensure _mediaQueryData is not null
    orientation = _mediaQueryData!.orientation; // Add ! to ensure _mediaQueryData is not null
    defaultSize = orientation == Orientation.landscape ? screenHeight! * 0.024 : screenWidth! * 0.024;
  }

  //get the proportionate height as per screen size
  static double getProportionateScreenHeight(double inputHeight){
    double screenHeight = SizeConfig.screenHeight ?? 0; // Use ?? to provide a default value if screenHeight is null
    // 812 is the layout height that designer use
    return (inputHeight/812.0) * screenHeight;
  }

  //get the proportionate width as per screen size
  static double getProportionateScreenWidth(double inputWidth){
    double screenWidth = SizeConfig.screenWidth ?? 0; // Use ?? to provide a default value if screenWidth is null
    // 375 is the layout width that designer use
    return (inputWidth/375.0) * screenWidth;
  }
}
