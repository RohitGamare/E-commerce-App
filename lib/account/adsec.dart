import 'package:flutter/material.dart';
import 'package:vnmake/profile.dart';
import 'package:vnmake/intihome.dart';

class AdSec extends StatefulWidget {
  @override
  _AdSecState createState() => _AdSecState();
}

class _AdSecState extends State<AdSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text('Ads Section'),
      backgroundColor: Colors.orange,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Container(
              height: 430,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 350, 0, 0),
                child: Column(
                  children: [
                    Text('Powered By',style: TextStyle(fontFamily:'Muli',fontSize:15,fontWeight:FontWeight.bold),),
                    SizedBox(height: 20),
                    Text('VISUAL NETWORKS MEDIA & TECHNOLOGY',style: TextStyle(color:Colors.grey[500]),),
                  ],
                ),
              ),
            ),
          ),
        ]
      ),
       bottomNavigationBar: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child : IconButton(icon: Icon(Icons.home,size: 35.0,color: Colors.black54), onPressed: (){
              Navigator.push(context,
                     MaterialPageRoute(builder: (context) => HomePage()),);
            }),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child : IconButton(icon: Icon(Icons.shopping_cart,size: 35.0,color: Colors.black54), onPressed: (){}),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          ),Container(
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child : IconButton(icon: Icon(Icons.store,size: 35.0,color: Colors.black54), onPressed: (){}),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          ),Container(
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child : IconButton(icon: Icon(Icons.explore,size: 35.0,color: Colors.black54), onPressed: (){}),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          ),Container(
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child : IconButton(icon: Icon(Icons.person,size: 35.0,color: Colors.black54), onPressed: (){
              Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Profile()),);
            }),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          
          ),

        ]
      ),
    );
  }
}