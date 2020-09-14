import 'package:agricare/pages/bottom_bar.dart';
import 'package:agricare/pages/login.dart';
import 'package:agricare/pages/mainPage.dart';
import 'package:agricare/pages/order.dart';
import 'package:flutter/material.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LogingPage(),
      routes: {
        '/main': (context) => MainPage(),
        '/bottomNavigation': (context) => BottomNavigationBarPage(),
        '/order': (context) => OrderPage(),
      },
    );
  }
}


