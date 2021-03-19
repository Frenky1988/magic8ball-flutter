import 'package:flutter/material.dart';
import 'dart:math';

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int randomNumber = 8;
  void _getNumber() {
    setState(() {
      randomNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
        color: Colors.lightBlueAccent,
        child: Center(
          child: TextButton(
            child: Image.asset("images/ball$randomNumber.png"),
            onPressed: () {
              _getNumber();
              //print("Pressed");
            },
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.lightBlueAccent;
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
