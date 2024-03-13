import 'package:app/screens/splash/splash_screen.dart';
import 'package:app/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

//we use routes here
//all our routes will be available here
final  Map <String, WidgetBuilder> routes={
  SplashScreen.routeName: (context)=>  SplashScreen(),
  SignInScreen.routeName: (context) =>  SignInScreen(),
};
