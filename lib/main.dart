import 'package:flutter/material.dart';
// import 'package:tic_tac_toe1/homePage.dart';
import 'package:workshala/loadingpage.dart';
import 'package:workshala/jobdis.dart';
import 'package:workshala/uploadScreen.dart';
import 'package:workshala/uploading.dart';
import 'package:workshala/uploaded.dart';
import 'package:intershipapp/screen/Home.dart';
import 'package:intershipapp/screen/Login.dart';
// import 'package:intershipapp/screen/ProfileLogin.dart';
import 'package:intershipapp/screen/Register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home()
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
    );
  }
}
