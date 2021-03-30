import 'package:flutter/material.dart';
import 'MyHomePagingnex.dart';
import 'dart:async';
class MyHomePaging extends StatefulWidget {
  @override
  _MyHomePagingState createState() => _MyHomePagingState();
}

class _MyHomePagingState extends State<MyHomePaging> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), Myhomepage3);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Container(
              height : 200,
              width : 200,
              decoration: BoxDecoration(
              image : DecorationImage(
                image: AssetImage('assets/images/splash_2.png')
                )
            ),
            ),
            SizedBox(width: 50, height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('अपना पसंदीदा उत्पाद चुनें',
                style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),),  
              ],
            ),
            SizedBox(width: 30, height: 10,),
            Center(
              child: Column(
                children: <Widget>[
                  Text('CHOOSE ITEM',
                  style: TextStyle(
                    fontSize: 20 , fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),),
                ],
              ),
            ),
            SizedBox(width: 30, height: 40,),
            Center(
              child: Column(
                children: <Widget>[
                  Text('TO MAKE LIFE EASIER ',
                  style: TextStyle(
                    fontSize: 20 , fontWeight: FontWeight.w400,
                    color: Colors.amber,
                  ),),
                ],

              ),
            ),
          ],
        ),
        
      ),
      
    );
  }
void Myhomepage3 () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePagingnex()),);
}
}

