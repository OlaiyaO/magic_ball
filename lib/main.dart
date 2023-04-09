import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() {
    return _BallState();
  }
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(4) + 1;
              });
              print('$ballNumber');
              print('I got Clicked');
            },
            style: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
        Center(
          child: SizedBox(
            width: 200,
            height: 30,
            child: Divider(
              thickness: 2,
              color: Colors.black38,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          height: 50,
          color: Colors.grey,
          child: Center(
            child: Text(
              'I got clicked $ballNumber time(s)',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 20,
                color: Colors.teal[900],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
