import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text("DSC Dice App"),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int MyNum = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "This is My First App",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Container(height: 20),
          FlatButton(
            child: Image.asset("images/dice$MyNum.png"),
            onPressed: () {
              changeNum();
              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  void changeNum() {
    MyNum = Random().nextInt(6) + 1;
  }
}
