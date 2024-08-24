import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ironman_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "images/bg.jpg",
            height: MediaQuery.of(context).size.height / 1.3,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("images/logo.png", height: 100,),
          )
        ],
      )),
    );
  }
}
