import 'package:flutter/material.dart';
import 'done.dart';

class Basic extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
  
}

class _BasicState extends State<Basic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomPadding: false ,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
            child: Text('Basic Information',style: TextStyle(fontSize: 30,fontFamily: 'Muli',color: Colors.grey)),
          ),
           Container(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 7),
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email', 
                 labelStyle:  TextStyle(color: Colors.grey),
      focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
   
              ),
              
            ),
          ),
           Container(
            padding: EdgeInsets.fromLTRB(30, 5, 30, 7),
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Create password', 
                 labelStyle:  TextStyle(color: Colors.grey),
      focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
   
              ),
              obscureText: true,
            ),
          ),
           Padding(
             padding: const EdgeInsets.fromLTRB(160, 20, 10, 0),
             child: Container(
                  width: 140,
                  height:45,
                  child: FlatButton(
                    textColor: Colors.black87,
                      color: Colors.white,
                      child: Text('NEXT',style: TextStyle(color:Colors.orange),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Colors.orange[600], width: 2),),
                    onPressed: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Done()),);
                    }
                    ),
                ),
           ),
            Padding(
             padding: const EdgeInsets.fromLTRB(80, 200, 0, 0),
             child: Row(
               children: [
                 Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              Container(
                                width:40,
                                height:2,
                                decoration: BoxDecoration(
                                  color: Colors.orange
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.circular(10),
                                  color: Colors.orange,
                                   
                                ),
                              ),
                              Container(
                                width:40,
                                height:2,
                                decoration: BoxDecoration(
                                  color: Colors.orange
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              Container(
                                width:40,
                                height:2,
                                decoration: BoxDecoration(
                                  color: Colors.orange
                                ),                           
                              ),Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.circular(20),
                                  color: Colors.orange,
                                ),
                              ),
               ],
               ),
           ),
        ]
      ),
      
    );
  }
}