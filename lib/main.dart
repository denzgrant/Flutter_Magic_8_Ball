import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: Colors.green),
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
        backgroundColor: Colors.brown[400],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber;

  Random random = new Random();
  void randomBall() {
    setState(() {
      ballNumber = random.nextInt(5) + 1;
      print(ballNumber);
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Center(
          child: Image.asset('images/ball$ballNumber.png'),
        ),
        onPressed: () {
          randomBall();
        },
      ),
    );
  }
}
