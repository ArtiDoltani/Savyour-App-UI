import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:savyour_app/Screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //AnimatedSplashScreen(splash: "images/splash.png", nextScreen: HomeScreen())
          Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/splash.png"), fit: BoxFit.fill)),
      ),
    );
  }
}
