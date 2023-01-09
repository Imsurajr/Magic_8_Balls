import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueGrey[800],
        ),
        body: Ball(),

      ),
    );
  }
}

class Ball extends StatefulWidget {
//see this
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            print('I got Pressed');
            ballNumber = Random( ).nextInt(5)+1;
            print(ballNumber);
          });
        },

        child: Image.asset('Images/ball$ballNumber.png'),
      ),
    );
  }
}
