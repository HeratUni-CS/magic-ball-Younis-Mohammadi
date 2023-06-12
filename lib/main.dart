import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            title: Center(
              child: Text('MAGIC 8 BALL'),
            ),
            backgroundColor: Colors.black87,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballAnswer = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ask Me Any Question ?',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              setState(() {
                ballAnswer = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballAnswer.png'),
          ),
        ),
      ],
    );
  }
}