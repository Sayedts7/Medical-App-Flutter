import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:medical_app/Screens/verification.dart';


import '../components/button.dart';

class logIn_m extends StatefulWidget {
  const logIn_m({Key? key}) : super(key: key);

  @override
  State<logIn_m> createState() => _logIn_mState();
}

class _logIn_mState extends State<logIn_m> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecf1fa),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
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
                  'Mobile Number',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The code will be send to your mobile number",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child:     IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),

                    ),
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Verification()));
                    },
                    child: Button1(txt1: 'Continue')),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
