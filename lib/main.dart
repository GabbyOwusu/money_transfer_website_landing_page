import 'package:flutter/material.dart';
import 'package:money_transfer_landing_page/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SanFransisco',
        primaryTextTheme: Typography.blackCupertino,
      ),
      home: MyHomePage(),
    );
  }
}
