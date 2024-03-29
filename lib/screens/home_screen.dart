import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
              },
              child: Text('First certificate'),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

              },
              child: Text('Advanced'),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {

              },
              child: Text('Proficiency'),
            ),
          ],
        ),
      ),
    );
  }

}