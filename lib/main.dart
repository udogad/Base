import 'package:flutter/material.dart';
import 'signuppage.dart';
import 'loginpage.dart';
import 'aboutpage.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/signup': (context) => SignUpPage(),
        '/login': (context) => LoginPage(),
        '/about': (context) => AboutPage(),
      },
    );
  }
}
