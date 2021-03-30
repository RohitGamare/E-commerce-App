import 'dart:async';
import 'MyHomePaging.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    
    
    super.initState();
    Timer(Duration(seconds: 5), Myhomepage2);
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
                image: AssetImage('assets/images/splash_1.png')
                )
            ),
            ),
            SizedBox(width: 50, height: 50,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('भारतीय उत्पादन बनेगी अब सबकी कि पहचानना',
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
                  Text('BUY UNIQUE,BUY ORIGINAL',
                  style: TextStyle(
                    fontSize: 20 , fontWeight: FontWeight.bold,
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

  // ignore: non_constant_identifier_names
  void Myhomepage2 () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePaging()),);
}


}