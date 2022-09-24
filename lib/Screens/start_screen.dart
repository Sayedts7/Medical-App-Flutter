import 'package:flutter/material.dart';
import 'package:medical_app/Screens/dashboard.dart';
import 'package:medical_app/Screens/mobile_signin.dart';
import 'package:medical_app/components/button.dart';

class start_screen extends StatefulWidget {
  const start_screen({Key? key}) : super(key: key);

  @override
  State<start_screen> createState() => _start_screenState();
}

class _start_screenState extends State<start_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecf1fa),
      body: SafeArea(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Image(height: 150, image: AssetImage('images/logo2.jpg')),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Sign in to Continue',
                style: TextStyle(fontSize: 15, ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> logIn_m()));
                  },
                  child: Button1(txt1: 'Sign in with mobile number')),

              SizedBox(
                height: 20,
              ),
              Text('or'),
              SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoard()));
                  },
    child: Button1(txt1: 'Sign in with Facebook')),

              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('By signing in, you accept our'),
                  Text(' Terms and Conditions', style: TextStyle(color: Colors.blue.shade500),),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
