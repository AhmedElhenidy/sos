import 'package:flutter/material.dart';
class TestSession extends StatefulWidget {
  @override
  _TestSessionState createState() => _TestSessionState();
}

class _TestSessionState extends State<TestSession> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.yellowAccent,
        alignment: Alignment.center,
        child: Container(
          width:250 ,
          height: 400,
          color: Colors.blue,
          alignment: Alignment.bottomCenter,
          child: Text("Hello World App",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
