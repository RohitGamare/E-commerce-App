import 'package:flutter/material.dart';
import 'products/iphone.dart';
import 'products/ipad.dart';
import 'products/airpods.dart';
import 'products/homepad.dart';
import 'intihome.dart';
enum WidgetMarker{
  home,video
}
class Apple extends StatefulWidget {
  @override
  _AppleState createState() => _AppleState();
}

class _AppleState extends State<Apple> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(260, 20, 10, 0),
              child: IconButton(icon: Icon(Icons.menu), onPressed: (){}),),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
          height: 180,
        
          child : ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
          child: Image.asset('assets/images/apple.jpg',
          fit: BoxFit.fitWidth,
          ),
          ),
        ),
        Container(
          child: Text('Apple Inc.',style: TextStyle(fontFamily: 'Muli',fontSize: 20,fontWeight:FontWeight.bold),),
        ),
        SizedBox(height:10),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('4',textAlign: TextAlign.center,style: TextStyle(fontSize:20)),
                  Text('Products',textAlign: TextAlign.center,),
                ],
              ),
              Column(
                children: [
                  Text('100',textAlign: TextAlign.center,style: TextStyle(fontSize:20),),
                  Text('Visitors',textAlign: TextAlign.center,),
                ],
              ),
              Column(
                children: [
                  RichText(text: TextSpan(
                children: [
                  TextSpan(text: '4.2',style: TextStyle(color: Colors.black,fontSize: 20)),
      WidgetSpan(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1.0),
          child: Icon(Icons.star,color: Colors.grey,),
        ),
      ),
                 
                ],
              ),
                  ),
                   Text('Popularity',textAlign: TextAlign.center,),
            ],
          ),
            ]
          )
        ),
        Row(
           mainAxisAlignment : MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child :  IconButton(icon: Icon(Icons.home,size:35), onPressed: (){
                setState(() {
                  selectedWidgetMarker = WidgetMarker.home;
                });
                
              }),
            ),
            Container(
              child :  IconButton(icon: Icon(Icons.video_label,size: 35), onPressed: (){
                setState(() {
                  selectedWidgetMarker = WidgetMarker.video;
                });
                  
              }),
            )
          ],

        ),
        Expanded(
                  child: Container(
            child: ListView(children: [
              Container(
                child: getCustomContainer(),
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
            child : IconButton(icon: Icon(Icons.person,size: 35.0,color: Colors.black54), onPressed: (){}),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          
          ),

        ]
      ),
      
    );
  }
  Widget getCustomContainer(){
    switch (selectedWidgetMarker){
      case WidgetMarker.home : return getHomeContainer();
      case WidgetMarker.video : return getVideoContainer();
    }
    return getHomeContainer();
  }
  Widget getHomeContainer(){
      return  GridView(      
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      

      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20,mainAxisSpacing: 20,
      ),
      children: <Widget>[
        
       InkWell(
         child: Column(
           
           children: [
             Stack(
               children : [ClipRRect(
                 
                  borderRadius: BorderRadius.circular(8.0),
               child: Center(child: Image.asset('assets/images/iphone.jpg',height: 120,fit: BoxFit.cover,)),
               ),
               SizedBox(height : 20),
               Padding(
                 padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
                 child: Container(
                   height: 40,
                   
                   alignment: Alignment.topLeft,
                   color: Colors.white70,

                   child: Text('Iphone Pro 12 Price: Rs.81,990',
                   style: TextStyle(
                     fontFamily: 'Muli',
                     fontWeight: FontWeight.bold
                   ),),

                 ),
               ),
               Container(
                 alignment: Alignment.topRight,
                 child: IconButton(icon: Icon(Icons.favorite), onPressed: (){}),

               ),
             
               ],

               ),
               
               
           ],
         ),
       onTap: (){
          Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Iphone()),);
       },),
       InkWell(
        child: Column(
           children: [
             Stack(
               children : [ClipRRect(
                 
                  borderRadius: BorderRadius.circular(8.0),
               child: Center(child: Image.asset('assets/images/ipad.jpg',height: 120,fit: BoxFit.fill,)),
               ),
                SizedBox(height : 20),
               Padding(
                 padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
                 child: Container(
                   height: 40,
                   
                   alignment: Alignment.topLeft,
                   color: Colors.white70,

                   child: Text('Ipad Pro Price: Rs.61,990',
                   style: TextStyle(
                     fontFamily: 'Muli',
                     fontWeight: FontWeight.bold
                   ),),

                 ),
               ),
               Container(
                 alignment: Alignment.topRight,
                 child: IconButton(icon: Icon(Icons.favorite), onPressed: (){}),

               ),
                
               ],

               ),
               
               
           ],
         ),
       onTap: (){
          Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Ipad()),);
       },),
       InkWell(
         child: Column(
           children: [
             Stack(
               children : [ClipRRect(
                 
                  borderRadius: BorderRadius.circular(8.0),
               child: Center(child: Image.asset('assets/images/airpods.jpg',height: 120,fit: BoxFit.fill,)),
               ),
                  SizedBox(height : 20),
               Padding(
                 padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
                 child: Container(
                   height: 40,
                   
                   alignment: Alignment.topLeft,
                   color: Colors.white70,

                   child: Text('Airpods Pro Price: Rs.12,990',
                   style: TextStyle(
                     fontFamily: 'Muli',
                     fontWeight: FontWeight.bold
                   ),),

                 ),
               ),
               Container(
                 alignment: Alignment.topRight,
                 child: IconButton(icon: Icon(Icons.favorite), onPressed: (){}),

               ),
               ],

               ),
               
               
           ],
         ),
       onTap: (){
          Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Airpod()),);
       },),
       InkWell(
          child: Column(
           children: [
             Stack(
               children : [ClipRRect(
                 
                  borderRadius: BorderRadius.circular(8.0),
               child: Center(child: Image.asset('assets/images/homepod.jpg',height: 100,fit: BoxFit.fill,)),
               ),
                 SizedBox(height : 20),
               Padding(
                 padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
                 child: Container(
                   height: 40,
                   
                   alignment: Alignment.topLeft,
                   color: Colors.white70,

                   child: Text('Homepod Pro 12 Price: Rs.20,990',
                   style: TextStyle(
                     fontFamily: 'Muli',
                     fontWeight: FontWeight.bold
                   ),),

                 ),
               ),
               Container(
                 alignment: Alignment.topRight,
                 child: IconButton(icon: Icon(Icons.favorite), onPressed: (){}),

               ),
               ],

               ),
               
               
           ],
         ),
       onTap: (){
          Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Homepod()),);
       },),
       
      ],
       );
  }
  Widget getVideoContainer(){
      return ListView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children:[
          ListTile(
            leading: Image.asset('assets/images/apple.jpg'),
            title: Text('Apple'),
            subtitle: Text('IphonePro Max 12'),
            onTap: (){
              
            },
          ),
          ListTile(
            leading: Image.asset('assets/images/ipad.jpg'),
            title: Text('Apple'),
            subtitle: Text('Ipad Max 12'),
            onTap: (){
              
            },
          ),
        ]
      );
  }
}






