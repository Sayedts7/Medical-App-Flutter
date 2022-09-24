import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:medical_app/Screens/location.dart';

import '../components/button.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecf1fa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(

              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child:
                  Image(height: 150, image: AssetImage('images/logo2.jpg')),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Verification',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Insert your code here",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child:    TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: 'Enter verification code',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      filled: true,
                      fillColor: Colors.white,

                    ),
                  )
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Location()));
                    },
                    child: Button1(txt1: 'Continue')),


                Padding(
                  padding: const EdgeInsets.only(right: 40.0, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Resend Code',textAlign: TextAlign.right, style: TextStyle(color: Colors.blue.shade500),),
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
