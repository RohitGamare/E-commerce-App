import 'package:flutter/material.dart';
import 'package:vnmake/Succes.dart';
import 'register.dart';

class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomPadding: false ,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child : RichText(text: TextSpan( 
                               text: "Business",
                                 style: TextStyle(  
                               color: Colors.red,  
                               fontSize: 30,  
                               fontWeight: FontWeight.bold, 
                               fontFamily: 'Muli', 
                              ), 
                           children: <TextSpan>[  
                                           TextSpan(  
                                           text: ' Login',  
                                           style: TextStyle(  
                                            color: Colors.grey, 
                                            ),  
                                         ),
                           ]
      ),
            ),
          ),
           Container(
            padding: EdgeInsets.fromLTRB(30, 100, 30, 7),
            alignment: Alignment.center,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter Your Email_id', 
                 labelStyle:  TextStyle(color: Colors.grey),
      focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
   
              ),
              
            ),
          ),
          SizedBox(height : 20),
          Container(
            padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
            alignment: Alignment.center,
            child: TextFormField(
              decoration: InputDecoration(
               labelStyle:  TextStyle(color: Colors.grey),
                labelText: 'Enter Your Password',
                 focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
  ),
    
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height : 30),
          Column(
            children: [
              Container(
                width: 300,
                height:45,
                child: RaisedButton(
                  textColor: Colors.white,
                    color: Colors.orange,
                    child: Text('LOG IN'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Succes()),);

                  }
                  ),
              ),
              SizedBox(height: 18),
              Container(
                width: 300,
                height:45,
                child: FlatButton(
                  textColor: Colors.black87,
                    color: Colors.white,
                    child: Text('BUILD YOUR NEW BUSINESS ACCOUNT',style: TextStyle(color:Colors.orange),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Register()),);
                  }
                  ),
              ),
            ],
          ),
        ]
      ),
      
    );
  }
}