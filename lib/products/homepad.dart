import 'package:flutter/material.dart';


class Homepod extends StatefulWidget {
  @override
  _HomepodState createState() => _HomepodState();
}

class _HomepodState extends State<Homepod> {
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