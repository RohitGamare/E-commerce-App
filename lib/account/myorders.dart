import 'package:flutter/material.dart';
import 'package:vnmake/profile.dart';
import 'package:vnmake/intihome.dart';


class Myorders extends StatefulWidget {
  @override
  _MyordersState createState() => _MyordersState();
}

class _MyordersState extends State<Myorders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Container(
          height: 439,
          color: Colors.grey[200],
          child: Column(
            children: [
              Row(
                children:[
                  Column(
                    children: [
                       Padding(
                         padding: const EdgeInsets.fromLTRB(20, 20, 0, 5),
                         child: Text('Iphone Pro 12',style: TextStyle(fontSize:25,),),
                       ),
                       Text('Seller : Apple Inc.',style: TextStyle(color: Colors.grey[500]),),
                        SizedBox(height: 10),
                        Text('Rs.81,990',style: TextStyle(fontSize:25,),), 
                    ]
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/iphone.jpg'),
                    ),
                  ),
                ]
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              width:2,
                              height:30,
                              decoration: BoxDecoration(
                                color: Colors.orange
                              ),
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.circular(10),
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              width:2,
                              height:30,
                              decoration: BoxDecoration(
                                color: Colors.orange
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.circular(20),
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              width:2,
                              height:30,
                              decoration: BoxDecoration(
                                color: Colors.orange
                              ),                           
                            ),Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                borderRadius : BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.orange
                                )
                              ),
                            ),

                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          child: Text('Ordered',style: TextStyle(fontSize:16,fontFamily : 'Muli', ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                            child: Text('Mon ,27 Aug 20', style: TextStyle(fontSize:10,color:Colors.grey[500])),
                          ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          child: Text('Packed',style: TextStyle(fontSize:16,fontFamily : 'Muli', ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                            child: Text('Mon ,27 Aug 20', style: TextStyle(fontSize:10,color:Colors.grey[500])),
                          ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          child: Text('Shipped',style: TextStyle(fontSize:16,fontFamily : 'Muli', ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                            child: Text('Mon ,27 Aug 20', style: TextStyle(fontSize:10,color:Colors.grey[500])),
                          ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                          child: Text('Dilevery',style: TextStyle(fontSize:16,fontFamily : 'Muli', ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Container(
                            child: Text('Expected by Tomorrow', style: TextStyle(fontSize:10,color:Colors.grey[500])),
                          ),
                      ),

                    ],
                  ),
                ],
              ),
            ]
          ),
        ),
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