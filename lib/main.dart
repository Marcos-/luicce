import 'package:luicce/screens/homescreen.dart';
import 'package:luicce/screens/productScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Luicce());

class Luicce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     body1: TextStyle(color: Colors.black54),
      //   ),
      // ),
      initialRoute: HomeScreen.id,
      routes: <String, WidgetBuilder>{
        HomeScreen.id: (BuildContext) => HomeScreen(),
        ProductScreen.id: (BuildContext) => ProductScreen()
      },
    );
  }
}