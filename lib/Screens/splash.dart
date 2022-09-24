import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medical_app/Screens/start_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> start_screen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff201e8e),
      body: Center(child: Image(
        height:100,
        image: AssetImage('images/logo.png'),)),
    );
  }
}
