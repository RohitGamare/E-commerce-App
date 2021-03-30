import 'package:flutter/material.dart';



class Ipad extends StatefulWidget {
  @override
  _IpadState createState() => _IpadState();
}

class _IpadState extends State<Ipad> {
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