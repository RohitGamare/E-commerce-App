import 'package:flutter/material.dart';
import 'package:vnmake/apple.dart';
import 'package:vnmake/products/payment.dart';
import 'payment.dart';
import 'package:vnmake/intihome.dart';
import 'package:vnmake/profile.dart';
class Received extends StatefulWidget {
  @override
  _ReceivedState createState() => _ReceivedState();
}

class _ReceivedState extends State<Received> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: [
           Row(
            mainAxisAlignment : MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 35, 10, 0),
                child: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.orange,), onPressed: (){
                   Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Payment()),);
                }),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 40, 0),
                child: Text('Card Information',style: TextStyle(fontFamily: 'Muli',fontSize: 30,fontWeight:FontWeight.bold,color: Colors.orange)),
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
                   child: Text('NAME ON CARD',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
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
                   child: Text('16 DIGIT CARD.NO',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
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
                   child: Text('VALID TROUGH',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
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
            child: Text('CVV',style : TextStyle(fontSize: 20,fontFamily: 'Muli',color:Colors.grey[500])),
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
                    child: Text('PAY'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    showDialog(
                    context: context,
                    builder: (BuildContext buildContext){
                      return Dialog(
                        child: Container(
                          height: 500,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.topCenter,
                                child: Text('AMOUNT RECEIVED',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.black,fontSize:20)),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.center,
                                child: GestureDetector(child: Image.asset('assets/images/thanku.png',height: 200,),
                                onTap: (){
                                            Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Apple()),);
                                },

                                ),
                                
                                ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.center,
                                child: Text('THANK YOU',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.orange,fontSize:20)),
                              ),
                              
                              Container(
                                child: Text('आपका दिन शुभ हो',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.orange,fontSize:20)),
                              ),
                            ]
                          ),
                        ),
                         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),),
                      );
                    });

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