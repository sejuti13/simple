import 'package:app/constants.dart';
import 'package:app/routs.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/splash/splash_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(230, 230, 230, 1), // Changed 100 to 1
        fontFamily: 'Raleway',
        
       appBarTheme: const AppBarTheme(
  color: Color.fromRGBO(230, 230, 230, 1),
  elevation: 0,
   systemOverlayStyle: SystemUiOverlayStyle.dark,
  iconTheme: IconThemeData(color: Colors.black),
 
   titleTextStyle: TextStyle(
   
      color: Colors.black,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w600,
      fontSize: 35,
    
  ),
),


        
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
