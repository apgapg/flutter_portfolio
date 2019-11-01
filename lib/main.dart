import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayush P Gupta',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Nunito',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
