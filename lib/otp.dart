import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'intihome.dart';

class otp extends StatefulWidget {
  @override
  _otpState createState() => _otpState();
}

class _otpState extends State<otp> {
  
final TextEditingController _otpTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomPadding: false ,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(15, 90, 20, 10),
            child: Text('PLEASE ENTER 4 DIGIT OTP',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[500],
            ),),
          ),
          Container(
            
            padding: EdgeInsets.fromLTRB(20, 50, 20, 5),
            child: OTPTextField(
              length: 4,
            width: MediaQuery.of(context).size.width,
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldWidth: 50,
            fieldStyle: FieldStyle.underline,
            style: TextStyle(
              fontSize: 17,
              color: Colors.orange[600],
            ),
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
            
            ),
          ),
          SizedBox(height : 40),
            Container(
                width: 300,
                height:45,
                child: RaisedButton(
                  textColor: Colors.white,
                    color: Colors.orange,
                    child: Text('SUBMIT'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.orange[600], width: 2),),
                  onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => HomePage()),);

                  }
                  ),
              ),
            SizedBox(height: 50),
              Container(
                height: 200,
                
                child : Image.asset('assets/images/otp.jpg',
                fit: BoxFit.fill,),
              )
        ],
        
      ),
      
    );
  }
}