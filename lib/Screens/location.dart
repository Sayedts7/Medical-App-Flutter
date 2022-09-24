import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:medical_app/Screens/location2.dart';

import '../components/button.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
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
                  'Location',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your location",
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
                        hintText: 'Enter your location',
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        suffixIcon: Icon(Icons.location_on_outlined),
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
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Location2()));
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

