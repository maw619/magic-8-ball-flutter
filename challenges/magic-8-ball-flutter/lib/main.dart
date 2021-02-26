import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.blue[400],
          body: Content(),
        ),
      ),
    );

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

int num = 1;

class _ContentState extends State<Content> {
  void getRandomNumber() {}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Container(
            child: Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        num = Random().nextInt(5) + 1;
                        print(num);
                      });
                    },
                    child: Image.asset('images/ball$num.png'))),
          )
        ],
      ),
    );
  }
}
