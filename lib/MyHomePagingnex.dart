import 'package:flutter/material.dart';
import 'MyHomePagingnex1.dart';
import 'dart:async';
class MyHomePagingnex extends StatefulWidget {
  @override
  _MyHomePagingnexState createState() => _MyHomePagingnexState();
}

class _MyHomePagingnexState extends State<MyHomePagingnex> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), Myhomepage4);
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
                image: AssetImage('assets/images/splash_3.png')
                )
            ),
            ),
            SizedBox(width: 50, height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('वस्तु खरीदि करे',
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
                  Text('BUY YOUR PRODUCT',
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
                  Text('shop from number of Indian local brands in one place at throughway prices',
                  textAlign: TextAlign.center,
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
void Myhomepage4 () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePagingnex1()),);
      
    
  }
}