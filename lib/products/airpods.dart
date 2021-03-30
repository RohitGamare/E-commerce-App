import 'package:flutter/material.dart';


class Airpod extends StatefulWidget {
  @override
  _AirpodState createState() => _AirpodState();
}

class _AirpodState extends State<Airpod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child : Text('Apple')
          ),
        ]
      ),
    );
  }
}