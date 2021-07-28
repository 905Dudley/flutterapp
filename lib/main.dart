import 'package:flutter/material.dart';
import 'package:pages_familiar/login.dart';
import 'package:pages_familiar/pages/appbar.dart';
import 'package:pages_familiar/pages/landingpage.dart';
import 'package:pages_familiar/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LandingPage(),
      routes: {
        '/login': (context) => LoginDemo(),
        '/home': (context) => HomePage(),
        '/signin': (context) => SignInDemo()
      },
    );
  }
}
