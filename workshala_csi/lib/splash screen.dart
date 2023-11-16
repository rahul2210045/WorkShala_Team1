import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshala_csi/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), (){
       Navigator.pushReplacement(context, WelcomePage() );
    });
    
  }
  
  
  
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(
          color: Color(0xffFFFFFF),
          padding: EdgeInsets.only(top: 339,left: 51),
            child: Row(
              children: [
                Text('WORK', style: TextStyle( fontSize: 42, color: Color(0xff946CC3), fontFamily: 'Azonix'),),
                Text('SHALA', style: TextStyle(fontSize: 42, color: Color(0xff000000), fontFamily: 'Azonix'),),
              ],
            ),

        ),
      );
    }
}

