import 'package:flutter/material.dart';
import 'package:vnmake/profile.dart';
import 'package:vnmake/intihome.dart';
import 'new.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Account Settings'),
      backgroundColor: Colors.orange,),
       body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: Container(
              height: 430,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Column(
                  children: [
                    Padding(
                            padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: 3000,
                              height: 40,
                              decoration: BoxDecoration(
                                
                                 border: Border.all(
                                        width: 1,),
                                         borderRadius: BorderRadius.all(
                                         Radius.circular(5.0) ), //                 <--- border width here
                              ),
                              child: GestureDetector(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                        child: Text('Language'),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(145, 0, 10, 0),
                                        child: Container(
                                          child: Icon(Icons.arrow_forward_ios),
                                        ),
                                      ),                                  
                                    ],
                                  ),
                                ),
                                onTap: (){},
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: 3000,
                              height: 40,
                              decoration: BoxDecoration(
                                
                                 border: Border.all(
                                        width: 1,),
                                         borderRadius: BorderRadius.all(
                                         Radius.circular(5.0) ), //                 <--- border width here
                              ),
                              child: GestureDetector(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                        child: Text('Turn to business acount'),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(60, 0, 10, 0),
                                        child: Container(
                                          child: Icon(Icons.arrow_forward_ios),
                                        ),
                                      ),                                  
                                    ],
                                  ),
                                ),
                                onTap: (){
                                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => New()),);
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Container(
                              alignment: Alignment.centerLeft,
                              width: 3000,
                              height: 40,
                              decoration: BoxDecoration(
                                
                                 border: Border.all(
                                        width: 1,),
                                         borderRadius: BorderRadius.all(
                                         Radius.circular(5.0) ), //                 <--- border width here
                              ),
                              child: GestureDetector(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                        child: Text('Security'),
                                      ),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(157, 0, 10, 0),
                                        child: Container(
                                          child: Icon(Icons.arrow_forward_ios),
                                        ),
                                      ),                                  
                                    ],
                                  ),
                                ),
                                onTap: (){},
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
                            child: Column(
                  children: [
                    Text('Powered By',style: TextStyle(fontFamily:'Muli',fontSize:15,fontWeight:FontWeight.bold),),
                    SizedBox(height: 20),
                    Text('VISUAL NETWORKS MEDIA & TECHNOLOGY',style: TextStyle(color:Colors.grey[500]),),
                  ],
                ),
                          ),
                  ],
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