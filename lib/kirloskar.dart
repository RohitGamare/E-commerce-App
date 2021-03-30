import 'package:flutter/material.dart';

class Kirloskar extends StatefulWidget {
  @override
  _KirloskarState createState() => _KirloskarState();
}

class _KirloskarState extends State<Kirloskar> {
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