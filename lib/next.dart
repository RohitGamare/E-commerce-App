import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'otp.dart';

class next extends StatefulWidget {
  @override
  _nextState createState() => _nextState();
}

class _nextState extends State<next> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController npassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      body: Column(
        children : <Widget>[
       
         Container(
           margin: EdgeInsets.only(top:30),
           child: Text('Create Here', style: TextStyle(fontFamily:'Muli',fontSize: 30,fontWeight: FontWeight.bold),),
         ),
         SizedBox(height: 20),
          Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: phoneController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                    border: OutlineInputBorder(),
                    labelText: 'Enter mobile number',
                    
                    labelStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
          
          SizedBox(height: 10),
        Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: phoneController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                    border: OutlineInputBorder(),
                    labelText: 'Create Password',
                    
                    labelStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
          SizedBox(height: 10),
          
          Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: phoneController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                    border: OutlineInputBorder(),
                    labelText: 'Re-enter password',
                    
                    labelStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
          
          SizedBox(height :10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children : <Widget>[
                Container(
                  child: RoundCheckBox( 
                    size: 20,
                      onTap: (selected) {},),
                ),
                SizedBox(width : 4),
                    Container(
                      child : Text('Agree with terms & condition',
                      style: TextStyle(color:Colors.black),),
                    )
              
            ]
          ),
          SizedBox(height : 18),
            Container(
                width: 300,
                height:45,
                child: RaisedButton(
                  textColor: Colors.white,
                    color: Colors.orange,
                    child: Text('SUBMIT'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => otp()),);

                  }
                  ),
              ),
              SizedBox(height: 40),
              Container(
                height: 200,
                width: 200,
                child : Image.asset('assets/images/click.jpg',
                fit: BoxFit.fill,),
              )
          
        ],
      ),
      
    );
  }
}