import 'package:flutter/material.dart';
import 'package:vnmake/signup.dart';

class ErrorX extends StatefulWidget {
  @override
  _ErrorXState createState() => _ErrorXState();
}

class _ErrorXState extends State<ErrorX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Dialog(
                        child: Container(
                          alignment: Alignment.center,
                          height: 250,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.topCenter,
                                child: Text('Login Error',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.black,fontSize:20),textAlign: TextAlign.center,),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.center,
                                child: GestureDetector(child: Image.asset('assets/images/error.jpg',height: 80,alignment: Alignment.center,),
                                onTap: (){
                                            Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Signup()),);
                                },

                                ),
                                
                                ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.center,
                                child: Text('This Account Does Not Exists',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.orange,fontSize:20),textAlign: TextAlign.center,),
                              ),
                              
                              Container(
                                child: Text('Create New Account',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.orange,fontSize:20),textAlign: TextAlign.center,),
                              ),
                            ]
                          ),
                        ),
                         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),),
                      ),
                    
      
    );
  }
}