import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshala_csi/profile.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            _buildTwo(context),
            SizedBox(height: 65.v),
            Text("Welcome to", style: theme.textTheme.headlineLarge),
            SizedBox(height: 22.v),
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "WORK", style: theme.textTheme.displayMedium),
                  TextSpan(
                      text: "SHALA",
                      style:
                      CustomTextStyles.displayMediumPrimaryContainer)
                ]),
                textAlign: TextAlign.left),
            SizedBox(height: 69.v),
            Container(
                height: 10.v,
                width: 44.h,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.79),
                    borderRadius: BorderRadius.circular(5.h))),
            SizedBox(height: 5.v)
          ])),


    );
  }
}