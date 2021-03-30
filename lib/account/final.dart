import 'package:flutter/material.dart';
import 'mydrawer.dart';


class Final extends StatefulWidget {
  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(fontFamily:'Muli',), textAlign: TextAlign.center),
        backgroundColor: Colors.orange,
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [

        ],
      ),
      
    );
  }
 
}

