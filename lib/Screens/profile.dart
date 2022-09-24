import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffecf1fa),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Profile', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 450,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 1,
                  // ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 5,
                    )
                  ]

              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Name'),
                        SizedBox(
                          width: 200,
                        ),
                        Icon(Icons.edit, color: Colors.black,),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [Text('Syed Taimoor Shah', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 450,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 1,
                  // ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 5,
                    )
                  ]

              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Email'),
                        SizedBox(
                          width: 200,
                        ),
                        Icon(Icons.edit, color: Colors.black,),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [Text('sayedts00777@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 450,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 1,
                  // ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 5,
                    )
                  ]

              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text('Password'),
                        SizedBox(
                          width: 180,
                        ),
                        Icon(Icons.edit, color: Colors.black,),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [Text('**********', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 450,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // border: Border.all(
                  //   color: Colors.black,
                  //   width: 1,
                  // ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 5,
                    )
                  ]

              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Phone'),
                        SizedBox(
                          width: 200,
                        ),
                        Icon(Icons.edit, color: Colors.black,),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [Text('+923345157342', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),],
                    )
                  ],
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
