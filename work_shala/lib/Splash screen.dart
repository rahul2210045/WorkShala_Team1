import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:work_shala/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
     Navigator.pushReplacement(
         context,
         MaterialPageRoute(
             builder:  (context) => MyApp()
         ));
    });
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         color: Colors.white,
         child: Center(child: Text('WORKSHALA ', style: TextStyle(
           fontSize: 42,
           fontWeight: FontWeight.w700,
           color: Color(hexColor('946CC3')),
         ),),)

       ),
     );
  }
}
hexColor(String color){
  String newColor = '0xff' + color;
 newColor =  newColor.replaceAll('#', '');
 int finalColor = int.parse(newColor);
 return finalColor;
}