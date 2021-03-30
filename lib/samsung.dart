import 'package:flutter/material.dart';

class Samsung extends StatefulWidget {
  @override
  _SamsungState createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Text('ELECTRONICS',
        style: TextStyle(color: Colors.white,
        fontFamily: 'Muli',
        fontWeight: FontWeight.normal),),
         
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        height : 200,
        color: Colors.redAccent,
      ),
      
    );
  }
}