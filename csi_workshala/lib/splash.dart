import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshala_csi/welcome.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(
              builder: (context) => WelcomeScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Container(
        color: Colors.white,

        child: Center(
          child: Container(
            child: Image.asset('assest/Images/WORKSHALA.png'),
          ),
        ),
      ),
    );
  }
}