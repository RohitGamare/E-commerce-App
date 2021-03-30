import 'package:flutter/material.dart';
import 'package:vnmake/MyHomePagingnex1.dart';
import 'package:vnmake/account/myorders.dart';
import 'intihome.dart';
import 'package:vnmake/account/settings.dart';
import 'dart:math';
import 'package:vnmake/account/adsec.dart';
import 'package:vnmake/account/abt.dart';


class Profile extends StatefulWidget {
  
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double circleRadius = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.grey[200],
    child: Stack(children: <Widget>[

      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          
          alignment: Alignment.topCenter,
          children: <Widget>[
            Padding(
              padding:
              EdgeInsets.only(top: circleRadius / 2.0, ),  ///here we create space for the circle avatar to get ut of the box
              child: Container(
                height: 490.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  border: Border.all(color:Colors.orange,width:1)
      
                 
                  
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: circleRadius/2,),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                                child: Text('Viditi Goswami', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                              ),
                              SizedBox(width: 30),
                              Transform.rotate(
                                 angle: 180 *pi / 180,
                                                              child: IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
                                   Navigator.push(context,
                     MaterialPageRoute(builder: (context) => MyHomePagingnex1()),);
                                }),
                              ),
                            ],
                          ),
                          Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.0,color: Colors.grey[500]),),
                  
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
                                      Container(
                                        child: Icon(Icons.notifications_active),
                                      ),
                                      SizedBox(width: 20),
                                      Text('Notification'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(110, 0, 10, 0),
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
                                      Container(
                                        child: Icon(Icons.credit_card),
                                      ),
                                      SizedBox(width: 20),
                                      Text('Payments'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(120, 0, 10, 0),
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
                                onTap: (){
                                   Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => Myorders()),);

                                },
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(Icons.playlist_add_check),
                                      ),
                                      SizedBox(width: 20),
                                      Text('My orders'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(120, 0, 10, 0),
                                        child: Container(
                                          child: Icon(Icons.arrow_forward_ios),
                                        ),
                                      ),                                  
                                    ],
                                  ),
                                ),
                                
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
                                 onTap: (){
                                  Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => Settings()),);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Icon(Icons.settings),
                                      ),
                                      SizedBox(width: 20),
                                      Text('Account Settings'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(77, 0, 10, 0),
                                        child: Container(
                                          child: Icon(Icons.arrow_forward_ios),
                                        ),
                                      ),                                  
                                    ],
                                  ),
                                ),
                               
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
                                      Container(
                                        child: Icon(Icons.security),
                                      ),
                                      SizedBox(width: 20),
                                      Text('Security'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(132, 0, 10, 0),
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
                                      Container(
                                        child: Icon(Icons.backup),
                                      ),
                                      SizedBox(width: 20),
                                      Text('I.T Support'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(115, 0, 10, 0),
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
                                      Container(
                                        child: Icon(Icons.info),
                                      ),
                                      SizedBox(width: 20),
                                      Text('About'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(145, 0, 10, 0),
                                        child: Container(
                                          child: Icon(Icons.arrow_forward_ios),
                                        ),
                                      ),                                  
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => Abt()),);
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
                                      Container(
                                        child: Icon(Icons.laptop_chromebook),
                                      ),
                                      SizedBox(width: 18),
                                      Text('Ad Sections'),
                                      
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(110, 0, 10, 0),
                                        child: Container(
                                          child: Icon(Icons.arrow_forward_ios),
                                        ),
                                      ),                                  
                                    ],
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context,
                                   MaterialPageRoute(builder: (context) => AdSec()),);
                                },
                              ),
                            ),
                          ),
                         
                         
                         
                         
                        ],
                      )
                ),
                
              ),
            ),



            ///Image Avatar
            Container(
              width: circleRadius,
              height: circleRadius,
              decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: ExactAssetImage('assets/images/viditi.jpg'),
                        )
               
            ),
            ),
          ],
        ),
      ),
    ]),
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