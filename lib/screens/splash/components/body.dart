import 'package:app/screens/splash/components/splash_content.dart';
import 'package:app/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/constants.dart';
import 'package:app/size_config.dart';



import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Simple",
      "image": 'assets/images/splash_1.png',
    },
    {
      "text": "We help people to connect to stores\n around Bangladesh",
      "image": 'assets/images/splash_2.png',
    },
    {
      "text": "We show an easy way to help people\n just stay at home with us",
      "image": 'assets/images/splash_3.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image']!,
                  text: splashData[index]['text']!,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: 'Continue',
                      press : (){
                        Navigator.pushNamed(context  , SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
    margin: EdgeInsets.only(right: 5),
  height: 2,
  width: currentPage == index ? 15 : 4,
  decoration: BoxDecoration(
    color: currentPage == index ? kPrimaryColor : Colors.black,
    borderRadius: BorderRadius.circular(3),
  ),duration: kAnimationDuration,
  curve: Curves.easeInOut,
  transform: currentPage == index
      ? Matrix4.identity()
      : Matrix4.diagonal3Values(0.5, 0.5, 1), // Scale down effect
    );
  }
}
