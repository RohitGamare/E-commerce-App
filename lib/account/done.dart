import 'package:flutter/material.dart';
import 'final.dart';


class Done extends StatefulWidget {
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: Container(
              height: 500,
              decoration : BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60.0)
                
              ),
              child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.topCenter,
                                child: Text('Registration has been successfully completed',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.black,fontSize:20),textAlign: TextAlign.center,),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.center,
                                child: GestureDetector(child: Image.asset('assets/images/hand.png',height: 200,),
                                onTap: (){
                                            Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Final()),);
                                },

                                ),
                                
                                ),
                              Container(
                                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                alignment: Alignment.center,
                                child: Text('Congratulations',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.orange,fontSize:20)),
                              ),
                              
                              Container(
                                child: Text('आपका दिन शुभ हो',style: TextStyle(fontFamily:'Muli',fontWeight:FontWeight.bold,color:Colors.orange,fontSize:20)),
                              ),
                            ]
                          ),
                        ),
            ),
          
        ]
      ),
      
    );
  }
  
}