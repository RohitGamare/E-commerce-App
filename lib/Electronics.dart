import 'package:flutter/material.dart';
import 'apple.dart';
import 'sony.dart';
import 'samsung.dart';
import 'kirloskar.dart';
import 'intihome.dart';

class Electronics extends StatefulWidget {
  @override
  _ElectronicsState createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Text('ELECTRONICS STORES',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white,
        fontFamily: 'Muli',
        fontWeight: FontWeight.normal),),
         
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomPadding: false,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    height:270,
                    width: 150,
                      color: Colors.white,
                    child:Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Image.asset('assets/images/apple.jpg',height: 150,alignment: Alignment.center,),
                        ),
                        Text('Apple Inc.',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontFamily: 'Muli',fontWeight: FontWeight.bold,)),
                        SizedBox(height: 10),
                        Text(' Apple Products ',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Muli'),),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 10,
                              width: 30,
                              color: Colors.orange,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: RichText(text: TextSpan(
                              children: [
                               TextSpan(text: '4.2',style: TextStyle(color: Colors.black,fontSize: 20,)),
                               WidgetSpan(
                                child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 1.0),
                                     child: Icon(Icons.star,color: Colors.grey,),
                                    ),
                                  ),
                 
                                     ],
                                 ),
                                ),
                            ),
                          ],
                        ),
                      ]
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Apple()),);
                  },
                ),
                SizedBox(width: 10),
                GestureDetector(
                  child: Container(
                    height:270,
                    width: 150,
                      color: Colors.white,
                    child:Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Image.asset('assets/images/sony.png',height: 150,alignment: Alignment.center,),
                        ),
                        Text('Sony ',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontFamily: 'Muli',fontWeight: FontWeight.bold,)),
                        SizedBox(height: 10),
                        Text(' Sony Products ',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Muli'),),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 10,
                              width: 30,
                              color: Colors.orange,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: RichText(text: TextSpan(
                              children: [
                               TextSpan(text: '4.3',style: TextStyle(color: Colors.black,fontSize: 20)),
                               WidgetSpan(
                                child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 1.0),
                                     child: Icon(Icons.star,color: Colors.grey,),
                                    ),
                                  ),
                 
                                     ],
                                 ),
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Sony()),);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Container(
                    height:270,
                    width: 150,
                      color: Colors.white,
                    child:Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Image.asset('assets/images/samsung.jpg',height: 150,alignment: Alignment.center,),
                        ),
                        Text('Samsung',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontFamily: 'Muli',fontWeight: FontWeight.bold,)),
                        SizedBox(height: 10),
                        Text(' Samsung Products ',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Muli'),),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 10,
                              width: 30,
                              color: Colors.orange,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: RichText(text: TextSpan(
                              children: [
                               TextSpan(text: '4.4',style: TextStyle(color: Colors.black,fontSize: 20)),
                               WidgetSpan(
                                child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 1.0),
                                     child: Icon(Icons.star,color: Colors.grey,),
                                    ),
                                  ),
                 
                                     ],
                                 ),
                                ),
                            ),
                          ],
                        ),
                      ]
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Samsung()),);
                  },
                ),
                SizedBox(width: 10),
                GestureDetector(
                  child: Container(
                    height:270,
                    width: 150,
                      color: Colors.white,
                    child:Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Image.asset('assets/images/kirloskar.jpg',height: 150,alignment: Alignment.center,),
                        ),
                        Text('Kirloskar',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontFamily: 'Muli',fontWeight: FontWeight.bold,)),
                        SizedBox(height: 10),
                        Text(' Kirloskar Products ',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Muli'),),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 10,
                              width: 30,
                              color: Colors.orange,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: RichText(text: TextSpan(
                              children: [
                               TextSpan(text: '4.5',style: TextStyle(color: Colors.black,fontSize: 20)),
                               WidgetSpan(
                                child: Padding(
                                     padding: const EdgeInsets.symmetric(horizontal: 1.0),
                                     child: Icon(Icons.star,color: Colors.grey,),
                                    ),
                                  ),
                 
                                     ],
                                 ),
                                ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Kirloskar()),);
                  },
                ),
              ],
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
            child : IconButton(icon: Icon(Icons.person,size: 35.0,color: Colors.black54), onPressed: (){}),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          
          ),

        ]
      ),
    );
  }
}

