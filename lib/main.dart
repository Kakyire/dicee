import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(Dicee());

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDice = 1;
  int rightDice = 1;

  // change the dice randomly when user click on it
  void _changeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  Widget _dieButton(int die) {
    return Expanded(
        child: FlatButton(
      onPressed: _changeDice,
      child: Image.asset('images/dice$die.png'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: Center(
          child: Row(
            children: [
              _dieButton(leftDice),
              _dieButton(rightDice),
            ],
          ),
        ),
      ),
    );
  }
}
