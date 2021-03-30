import 'package:flutter/material.dart';
import 'package:vnmake/next.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController addressController = TextEditingController();
  TextEditingController passController = TextEditingController();
   TextEditingController pinController = TextEditingController();
  var _city = ['City','Mumbai', 'Banglore','Hyderabad', ' Chennai', 'Ahmedabad','Kolkata','Jaipur','Lucknow'];
  var _currentItemSelected = 'City' ;
  var _state =['State', 'Maharashtra','Karnataka','Telangana','Tamil Nadu', 'Gujarat','West Bengal'];
  var _currentsItemSelected = 'State' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      body: Column(
        children: <Widget> [
         Container(
           margin: EdgeInsets.only(top:30),
           child: Text('Create Here', style: TextStyle(fontFamily:'Muli',fontSize: 30,fontWeight: FontWeight.bold),),
         ),
          SizedBox(height: 20),
         Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: addressController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
                    border: OutlineInputBorder(),
                    labelText: 'Enter Address',
                    
                    labelStyle: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
          
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Container(
             decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black38, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              
              child: DropdownButton<String>(
                isExpanded: true,
                items: _city.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem,style: TextStyle(color: Colors.grey[500]),),
                    
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
          ),
         
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Container(
              decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black38, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
         
              
              child: DropdownButton<String>(
                
                isExpanded: true,
                items: _state.map((String dropDownStringsItem) {
                  return DropdownMenuItem<String>(
                    
                    value: dropDownStringsItem,
                    child: Text(dropDownStringsItem,style: TextStyle(color:Colors.grey[500]),
                    ),
                    
                  );
                }).toList(),
                onChanged: (newValuesSelected){
                  setState(() {
                    this._currentsItemSelected = newValuesSelected;
                  });

                },
                value: _currentsItemSelected,

              ),
            ),
          ),
         SizedBox(height: 10),
          Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: pinController,
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
          SizedBox(height: 30),
          Column(
            children: [
              Container(
                width: 300,
                height:45,
                child: RaisedButton(
                  textColor: Colors.white,
                    color: Colors.orange,
                    child: Text('NEXT'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => next()),);

                  }
                  ),
              ),
              SizedBox(height: 20),
              Container(
                height:200,
                child: Image.asset('assets/images/click.jpg'),
              ),
              
        ],

      ),
        ],
      )
      
    );
  }
}