import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/tabs/h1.dart';

import '../tabs/h2.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  // not working in web
  //not run in ios or android
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home1())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          color: Colors.white,
          width: 120,
          height: 120,
          child: Image.network(
              "https://image.shutterstock.com/image-vector/dots-letter-c-logo-design-600w-551769190.jpg")),
    );
  }
}
