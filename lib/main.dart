import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade900,
        title: const Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.blue,
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  void change() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });

    print('The button is clicked.'
        'Hahahahah!'
        'Vikram!'
        'Vikram!'
        'Vikram!'
        'Vikram!'
        '(continues chilling with the song)');

    print(ballNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: change,
            child: Image.asset('images/ball$ballNumber.png')));
  }
}
