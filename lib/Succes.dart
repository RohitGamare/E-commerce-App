import 'package:flutter/material.dart';


class Succes extends StatefulWidget {
  @override
  _SuccesState createState() => _SuccesState();
}

class _SuccesState extends State<Succes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
              height : 200,
              width : 200,
              decoration: BoxDecoration(
              image : DecorationImage(
                image: AssetImage('assets/images/success.png')
                )
            ),
            ),
      ),
      
    );
  }
}