import 'package:flutter/material.dart';
import 'basic.dart';

class Categ extends StatefulWidget {
  @override
  _CategState createState() => _CategState();
}

class _CategState extends State<Categ> {
  var _city = ['Category','Mumbai', 'Banglore','Hyderabad', ' Chennai', 'Ahmedabad','Kolkata','Jaipur','Lucknow'];
  var _currentItSelected = 'Category' ;
  var _state =['Sub Category', 'Maharashtra','Karnataka','Telangana','Tamil Nadu', 'Gujarat','West Bengal'];
  var _currentsiSelected = 'Sub Category' ;
  var _wait =['Tag', 'Maharashtra','Karnataka','Telangana','Tamil Nadu', 'Gujarat','West Bengal'];
  var _currentsSelected = 'Tag' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomPadding: false ,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
            child: Text('Choose Category',style: TextStyle(fontSize: 30,fontFamily: 'Muli',color: Colors.grey)),
          ),
          SizedBox(height: 40),
           Container(
           
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            
            child: DropdownButton<String>(
              isExpanded: true,
              items: _city.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem,style: TextStyle(color: Colors.grey),),
                  
                );
              }).toList(),
              onChanged: (newValueSelected){
                setState(() {
                  this._currentItSelected = newValueSelected;
                });

              },
              value: _currentItSelected,

            ),
          ),
         
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
         
            
            child: DropdownButton<String>(
              isExpanded: true,
              items: _state.map((String dropDownStringsItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringsItem,
                  child: Text(dropDownStringsItem,style: TextStyle(color:Colors.grey),
                  ),
                );
              }).toList(),
              onChanged: (newValuesSelected){
                setState(() {
                  this._currentsiSelected = newValuesSelected;
                });

              },
              value: _currentsiSelected,

            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
         
            
            child: DropdownButton<String>(
              isExpanded: true,
              items: _wait.map((String dropDownStringsItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringsItem,
                  child: Text(dropDownStringsItem,style: TextStyle(color:Colors.grey),
                  ),
                );
              }).toList(),
              onChanged: (newValuesSelected){
                setState(() {
                  this._currentsSelected = newValuesSelected;
                });

              },
              value: _currentsSelected,

            ),
          ),
           Padding(
             padding: const EdgeInsets.fromLTRB(160, 20, 10, 0),
             child: Container(
                  width: 140,
                  height:45,
                  child: FlatButton(
                    textColor: Colors.black87,
                      color: Colors.white,
                      child: Text('NEXT',style: TextStyle(color:Colors.orange),),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: Colors.orange[600], width: 2),),
                    onPressed: (){
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Basic()),);
                    }
                    ),
                ),
           ),
            Padding(
             padding: const EdgeInsets.fromLTRB(80, 140, 0, 0),
             child: Row(
               children: [
                 Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              Container(
                                width:40,
                                height:2,
                                decoration: BoxDecoration(
                                  color: Colors.orange
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              Container(
                                width:40,
                                height:2,
                                decoration: BoxDecoration(
                                  color: Colors.orange
                                ),
                              ),
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.circular(10),
                                  color: Colors.orange,
                                 
                                ),
                              ),
                              Container(
                                width:40,
                                height:2,
                                decoration: BoxDecoration(
                                  color: Colors.orange
                                ),                           
                              ),Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius : BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
               ],
               ),
           ),
        ],
      ),
      
    );
  }
}