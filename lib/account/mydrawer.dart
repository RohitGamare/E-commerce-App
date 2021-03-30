import 'package:flutter/material.dart';
import 'final.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
   final double circleRadius = 130.0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget> [
          Container(
            margin: EdgeInsets.only(top:30,),
            width: circleRadius,
              height: circleRadius,
              decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: ExactAssetImage('assets/images/logo.png'),
                        ), 
            ),
          ),
          Container(
            child: Text('Company',style:TextStyle(fontFamily:'Muli',fontSize:20,color:Colors.grey,fontWeight: FontWeight.bold)),
          ),
          SizedBox(height:30),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Column(
                children: [
                  Row(
                    
                    children: [
                      Container(child: IconButton(icon: Icon(Icons.home,size:30,color:Colors.orange), onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Final(),));})),
                      Container(child: GestureDetector( child:Text('Home',style:TextStyle(fontFamily:'Muli',color:Colors.orange,fontSize:20,),),onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>Final(),));}),),
                    ],
                  ),
      
                  Row(
                    
                    children: [
                      Container(child: IconButton(icon: Icon(Icons.exit_to_app,size:30,color:Colors.orange), onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Final(),));})),
                      Container(child: GestureDetector( child:Text('Product Entry',style:TextStyle(fontFamily:'Muli',color:Colors.orange,fontSize:20,),),onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>Final(),));}),),
                    ],
                  ),

                  Row(
                    
                    children: [
                      Container(child: IconButton(icon: Icon(Icons.insert_chart,size:30,color:Colors.orange), onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Final(),));})),
                      Container(child: GestureDetector( child:Text('Analysis',style:TextStyle(fontFamily:'Muli',color:Colors.orange,fontSize:20,),),onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>Final(),));}),),
                    ],
                  ),

                  Row(
                    
                    children: [
                      Container(child: IconButton(icon: Icon(Icons.featured_play_list,size:30,color:Colors.orange), onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Final(),));})),
                      Container(child: GestureDetector( child:Text('Purchases',style:TextStyle(fontFamily:'Muli',color:Colors.orange,fontSize:20,),),onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>Final(),));}),),
                    ],
                  ),
                   Padding(
                            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                            child: Column(
                  children: [
                    Text('Powered By',style: TextStyle(fontFamily:'Muli',fontSize:15,fontWeight:FontWeight.bold),textAlign: TextAlign.center,),
                    SizedBox(height: 20),
                    Text('VISUAL NETWORKS MEDIA & TECHNOLOGY',style: TextStyle(color:Colors.orange),textAlign: TextAlign.center,),
                  ],
                ),
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