import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/rendering.dart';
import 'package:vnmake/products.dart';
import 'package:vnmake/profile.dart';
import 'products.dart';
import 'Electronics.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller;
  FocusNode focusNode;
  
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit : BoxFit.cover,
        images : [
          AssetImage('assets/images/offer1.jpg'),
          AssetImage('assets/images/offer2.jpg'),
          AssetImage('assets/images/offer.jpg'),
          AssetImage('assets/images/offer4.jpg'),
          AssetImage('assets/images/offer3.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds : 1000),
        dotColor: Colors.red,
        
      ),
    );
    return Scaffold(
       resizeToAvoidBottomPadding: false ,
      body: Column(
      children : <Widget>[
          Row(  
          children: [
             Container( 
               margin: EdgeInsets.only(top:20),
      padding: EdgeInsets.fromLTRB(20, 10,70 , 10), 
      child : RichText(  
                text: TextSpan( 
                       text: "Fo",
                         style: TextStyle(  
                       color: Colors.grey[500],  
                       fontSize: 20,  
                       fontWeight: FontWeight.bold, 
                       fontFamily: 'Muli', 
                      ), 
                   children: <TextSpan>[  
                                   TextSpan(  
                                   text: 'un',  
                                   style: TextStyle(  
                                    color: Colors.red, 
                                    ),  
                                 ), 
                             TextSpan(  
                                 text: 'dry.in',
  
                                ),
  
                        ],
  
                        ),
  
                 )
  
            ),
  
            Container( 
          padding: EdgeInsets.fromLTRB(116, 10, 18, 0), 
          alignment: Alignment.centerLeft, 
          child: Icon( 
            Icons.notifications,
            size: 28,
            color: Colors.grey[500].withOpacity(1.0),
          ),
  
          ),
  
          ],
  
  
  
          ),
  
       Container( 
           padding: EdgeInsets.fromLTRB(10, 5, 10, 2), 
           child: TextField(
            
            controller: controller,
      focusNode: focusNode,
      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
      decoration: InputDecoration(
      
          enabledBorder:  OutlineInputBorder(
             borderRadius: BorderRadius.circular(90),
            borderSide: BorderSide(
      color: Color(0x4437474F),
            ),
  
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          suffixIcon: Icon(Icons.search),
          border: InputBorder.none,
          hintText: "Search here you want!",
          contentPadding: const EdgeInsets.only(
            left: 16,
            right: 20,
            top: 14,
            bottom: 14,
          ),
  
      ),
  
            ),
  
       ),
  
       Container(
           padding : EdgeInsets.fromLTRB(3,4,3,0),
           child : image_carousel,
       ),
  
       SizedBox(height: 10),
       Container(
           child: Row(
           children : <Widget> [
            Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
      child: FlatButton(
        color: Colors.red,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Colors.red)
        ),
        padding: EdgeInsets.symmetric(vertical : 5,horizontal : 35),
        child: Text('ELECTRONICS',style: TextStyle(color: Colors.white),) ,
        onPressed: (){
           Navigator.push(context,
             MaterialPageRoute(builder: (context) => Electronics()),);
         }
  
       ),
  
            ),
  
             Container(
  
      padding: EdgeInsets.fromLTRB(5, 5, 10, 1),
  
      child: FlatButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Colors.purple)
        ),
        color: Colors.purple,
  
        padding: EdgeInsets.symmetric(vertical : 5,horizontal : 50),
  
        child: Text('KITCHEN',style: TextStyle(color: Colors.white),) ,
  
        onPressed: (){},
  
       ),
  
            ),
  
           ],
  
           ),
  
       ),
  
       Container(
  
           child: Row(
  
           children : <Widget> [
  
            Container(
  
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
  
      child: FlatButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Colors.green)
        ),
          color: Colors.green,
  
        padding: EdgeInsets.symmetric(vertical : 5,horizontal : 62),
  
        child: Text('FOOD',style: TextStyle(color: Colors.white),) ,
  
        onPressed: (){},
  
       ),
  
            ),
  
             Container(
  
      padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
      
  
      child: FlatButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Colors.pink)
        ),
  
        color: Colors.pink,
  
        padding: EdgeInsets.symmetric(vertical : 5,horizontal : 50),
  
        child: Text('FASHION',style: TextStyle(color: Colors.white),) ,
  
        onPressed: (){},
  
       ),
       
  
            ),
  
           ],
  
           ),
  
       ),
  
       Container(
  
      padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
      
  
      child: FlatButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Colors.yellow)
        ),
  
        color: Colors.amber,
  
        padding: EdgeInsets.symmetric(vertical : 5,horizontal : 100),
        
  
        child: Text('AGRO',style: TextStyle(color: Colors.white),) ,
        
  
        onPressed: (){},
  
       ),
  
            ),
  
            SizedBox(height: 10),
  
        Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
  
         alignment: AlignmentDirectional(-1.0, 1.0),
  
          child : Text('WEEK PROMOTION ',
  
          style: TextStyle(
  
            fontWeight: FontWeight.bold,
  
            fontFamily: 'Mulil',
  
            color: Colors.black,
  
          ),),
  
        ),
  
        Expanded(
                          child: ListView(
                            children: [Container(   
              padding: EdgeInsets.all(10), 
              child: Products(),   
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