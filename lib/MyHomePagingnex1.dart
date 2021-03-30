
import 'package:flutter/material.dart';
import 'package:vnmake/Succes.dart';
import 'package:vnmake/signup.dart';


class MyHomePagingnex1 extends StatefulWidget {
  @override
  _MyHomePagingnex1State createState() => _MyHomePagingnex1State();
}

class _MyHomePagingnex1State extends State<MyHomePagingnex1> {
  
  TextEditingController numberController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      body: (Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:30),
            child: Text('Login Here',style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,fontFamily: 'Muli'),),
          ),
          SizedBox(height : 50),
           Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: numberController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                    border: OutlineInputBorder(),
                    labelText: 'Enter Phone Number',
                    
                    labelStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
           SizedBox(height : 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Container(
                
                child: TextField(
                  controller: passController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                    border: OutlineInputBorder(),
                    labelText: 'Enter Password',
                    
                    labelStyle: TextStyle(
                      
                      color: Colors.grey[500],
                    ),
                  ),
                  obscureText: true,
                ),
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
                    child: Text('BUILD YOUR ACCOUNT'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Signup()),);
                  }
                  ),
              ),
              Container(
                height: 250,
                child: Image.asset('assets/images/accept.jpg'),
              ),
            ],
          ),
          
          
            
          
        ],
      ) 
      ),
    );
  }
}