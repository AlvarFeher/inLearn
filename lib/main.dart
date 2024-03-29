import 'package:flutter/material.dart';
import 'package:test_english1/screens/exercise1.dart';
import 'package:test_english1/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        fontFamily: 'Times New Roman'
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
     //HomeScreen()
    );
  }
}
