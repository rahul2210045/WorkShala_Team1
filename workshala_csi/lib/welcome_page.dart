import 'dart:html';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Container(
        width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 393,)
              Header(),
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(43),
                    bottomRight: Radius.circular(43),
                  )
                ),
                child: Image.asset('assets/images/Group.png'),
              ))
            Container(child: ,)],
          ),
      ),
    );
  }
}