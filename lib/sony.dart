import 'package:flutter/material.dart';

class Sony extends StatefulWidget {
  @override
  _SonyState createState() => _SonyState();
}

class _SonyState extends State<Sony> {
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