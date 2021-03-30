import 'package:flutter/material.dart';
import 'package:vnmake/products/iphone.dart';
import 'package:vnmake/products/payment.dart';
import 'iphone.dart';
import 'package:vnmake/intihome.dart';
import 'payment.dart';
class Buynow extends StatefulWidget {
  @override
  _BuynowState createState() => _BuynowState();
}

class _BuynowState extends State<Buynow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomPadding: false,
      body: Column(
        children:[
          Row(
            mainAxisAlignment : MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 35, 10, 0),
                child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.orange,), onPressed: (){
                   Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Iphone()),);
                }),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 40, 0),
                child: Text('Shipping Address',style: TextStyle(fontFamily: 'Muli',fontSize: 30,fontWeight:FontWeight.bold,color: Colors.orange)),
              ),
            ],
          ),
         Padding(
           padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
           child: Container(
             child: ListView(
               children: [
                 Container(
                   padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                   alignment: Alignment.topLeft,
                   child: Text('ADDRESS LINE',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
                 ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              decoration: InputDecoration(
                 labelStyle:  TextStyle(color: Colors.orange[700]),
      focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[700]),
  ),
   
              ),
              
            ),
          ),
          Container(
                   padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                   alignment: Alignment.topLeft,
                   child: Text('ROAD NAME',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
                 ),
                 Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              decoration: InputDecoration(
                 labelStyle:  TextStyle(color: Colors.orange[700]),
      focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[700]),
  ),
   
              ),
              
            ),
          ),
           Container(
                   padding: EdgeInsets.fromLTRB(10, 7, 0, 0),
                   alignment: Alignment.topLeft,
                   child: Text('LANDMARK',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
                 ),
                 Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              decoration: InputDecoration(
                 labelStyle:  TextStyle(color: Colors.orange[700]),
      focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[700]),
  ),
   
              ),
              
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(50, 7, 0, 0),
                child: Text('CITY',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
              ),
              
              Container(
                padding: EdgeInsets.fromLTRB(50, 7, 0, 0),
                child: Text('POSTAL CODE',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
              ),
            ],
          ),
           Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              decoration: InputDecoration(
                 labelStyle:  TextStyle(color: Colors.orange[700]),
      focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[700]),
  ),
   
              ),
              
            ),
          ),
          SizedBox(height: 20),
           Container(
                                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                width: 300,
                height:45,
                child: RaisedButton(
                  textColor: Colors.white,
                    color: Colors.orange,
                    child: Text('GO TO PAYMENT'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Payment()),);

                  }
                  ),
              ),
          

          
               ]
             ),
             height: 445,      
             decoration: BoxDecoration(
               color: Colors.grey[200],
               borderRadius: BorderRadius.circular(16.0)
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
            child : IconButton(icon: Icon(Icons.person,size: 35.0,color: Colors.black54), onPressed: (){}),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          
          ),

        ]
      ),
      
    );
  }
}