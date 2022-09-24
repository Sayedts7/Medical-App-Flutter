import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String txt1;
  // final String page;
  const Button1({Key? key, required this.txt1, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 320,
      decoration: BoxDecoration(
        color: Color(0xff201e8e),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(txt1, style: TextStyle(color: Colors.white, fontSize: 15),)),
    );
  }
}
