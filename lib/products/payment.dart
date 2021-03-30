import 'package:flutter/material.dart';
import 'package:vnmake/products/buy.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:vnmake/products/received.dart';
import 'buy.dart';
import 'received.dart';
import 'package:vnmake/intihome.dart';
class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Row(
            mainAxisAlignment : MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 35, 10, 0),
                child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.orange,), onPressed: (){
                   Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Buynow()),);
                }),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 40, 0),
                child: Text('Payment Method',style: TextStyle(fontFamily: 'Muli',fontSize: 30,fontWeight:FontWeight.bold,color: Colors.orange)),
              ),
            ],
          ),
           Padding(
             padding: const EdgeInsets.fromLTRB(30, 100, 0, 0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children : <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: RoundCheckBox( 
                      size: 20,
                        onTap: (selected) {},),
                  ),
                  
                  Container(
                    child: Text('Debit Card',textAlign: TextAlign.center,),
                  ),
                  
                      Container(
                        child : Image.asset('assets/images/debit.png', height: 50,alignment: Alignment.center,),
                      )
                
              ]
          ),
           ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : <Widget>[
                    Container(
                      child: RoundCheckBox( 
                        size: 20,
                          onTap: (selected) {},),
                    ),
                 
                  Container(
                    child: Text('Google Pay',textAlign: TextAlign.center,),
                  ),
                   
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child : Image.asset('assets/images/google-pay.png', height: 20,alignment: Alignment.center,),
                        ),
                  
                ]
          ),
          ),
          SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : <Widget>[
                    Container(
                      child: RoundCheckBox( 
                        size: 20,
                          onTap: (selected) {},),
                    ),
                    
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text('Phone Pay',textAlign: TextAlign.center,),
                  ),
                   
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child : Image.asset('assets/images/phonepay.png', height: 30,alignment: Alignment.center,),
                        )
                  
                ]
          ),
            ),
             SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children : <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: RoundCheckBox( 
                        size: 20,
                          onTap: (selected) {},),
                    ),
                    
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Text('Paytm',textAlign: TextAlign.center,),
                  ),
                    
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child : Image.asset('assets/images/paytm.jpg', height: 15,alignment: Alignment.center,),
                        )
                  
                ]
          ),
            ),
             SizedBox(height:80),
           Container(
                                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                width: 300,
                height:45,
                child: RaisedButton(
                  textColor: Colors.white,
                    color: Colors.orange,
                    child: Text('PROCESS'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Received()),);

                  }
                  ),
              ),
          
        ],
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