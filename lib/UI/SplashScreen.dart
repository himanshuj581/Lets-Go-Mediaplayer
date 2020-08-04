import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'HomePage.dart';

class SplashScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: HomePage(),
      image: Image(image: AssetImage('assets/images/logo.png')),
      photoSize: 200,
      loadingText: Text(
        'Made By: \n Himanshu Jain',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            color: Color(0xff37474f),
            fontWeight: FontWeight.bold),
      ),
      loaderColor: Color(0xff202020),
    );
  }
}
