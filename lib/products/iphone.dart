import 'package:flutter/material.dart';
import 'package:vnmake/intihome.dart';
import 'package:vnmake/products/buy.dart';
import 'buy.dart';

class Iphone extends StatefulWidget {
  @override
  _IphoneState createState() => _IphoneState();
}

class _IphoneState extends State<Iphone> {
  var _city = ['Quantity','1','2','3','4'];
  var _currentItemSelected = 'Quantity' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              alignment: Alignment.topLeft,
              child: Text('Apple Inc.',style: TextStyle(
                fontFamily: 'Muli',
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),),
            ),
            Container(
      child : Image.asset('assets/images/iphone.jpg',height: 250,),
            ),
            Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Text('Thin, light, and easy to grip — this Apple-designed case shows off the brilliant colored finish of iPhone 11 Pro while providing extra protection.',textAlign: TextAlign.justify,),
            ),
         
            Expanded(
                          child: Container(
                child: ListView(
                              children: [
                                   Row(
                     mainAxisAlignment : MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
          child: Text('Rs.81,990',style: TextStyle(fontSize:30)),
        ),
        Container(
          child: Text('4.8',style: TextStyle(fontSize:30)),
        ),
      ],
                  ),
                  Row(
                     mainAxisAlignment : MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text('',style: TextStyle(fontSize:30)),
        ),
        Container(
          child: Text('                                                    Ratings',style: TextStyle(fontSize:10)),
        ),
      ],
                  ),
                      Row(
                     mainAxisAlignment : MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 3),
          child: DropdownButton<String>(
              isExpanded: false,
              items: _city.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem,style: TextStyle(color: Colors.black),),
                  
                );
              }).toList(),
              onChanged: (newValueSelected){
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });

              },
              value: _currentItemSelected,

            ),
        ),
        Container(
          child: Text('MADE IN INDIA',style: TextStyle(fontSize:10,color: Colors.orange)),
        ),
      ],
                  ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                width: 300,
                height:45,
                child: RaisedButton(
                  textColor: Colors.white,
                    color: Colors.orange,
                    child: Text('BUY NOW'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Buynow()),);

                  }
                  ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                width: 300,
                height:45,
                child: FlatButton(
                  textColor: Colors.black87,
                    color: Colors.white,
                    child: Text('ADD TO BAG'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => HomePage()),);
                  }
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
            child : IconButton(icon: Icon(Icons.person,size: 35.0,color: Colors.black54), onPressed: (){}),
            height: 50,
            width: MediaQuery.of(context).size.width/5,
          
          ),

        ]
      ),
      
    );
  }
}