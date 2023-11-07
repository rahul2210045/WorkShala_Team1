import 'package:flutter/material.dart';
// import 'package:tic_tac_toe1/homePage.dart';
import 'package:workshala/loadingpage.dart';
import 'package:workshala/jobdis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: jobDisDetail(),
    );
  }
}
