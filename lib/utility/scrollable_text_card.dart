import 'package:flutter/material.dart';

class ScrollableTextCard extends StatelessWidget {
  final String text;

  const ScrollableTextCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 350.0,
          child: SingleChildScrollView(
            child: Text(
              text,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}

