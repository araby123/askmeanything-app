import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: Text('Ask Me AnyThing'),
            backgroundColor: Colors.black45,
          ),
          body: MyBall(),
        ),
      ),
    );

class MyBall extends StatefulWidget {
  @override
  _MyBallState createState() => _MyBallState();
}
class _MyBallState extends State<MyBall> {
    int ballNumber = 1;
    void changeBall(){
      setState(() {
        ballNumber = Random().nextInt(4) + 1;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeBall();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),

          )
        ],
      ),
    );
  }
}
