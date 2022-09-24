import 'package:flutter/material.dart';

import 'package:medical_app/Screens/test.dart';
import 'package:medical_app/components/button.dart';

import '../main.dart';
import 'doc.dart';

class My_Appoint extends StatefulWidget {
  const My_Appoint({Key? key}) : super(key: key);

  @override
  State<My_Appoint> createState() => _My_AppointState();
}

class _My_AppointState extends State<My_Appoint> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

          backgroundColor: Color(0xffecf1fa),

        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: () {
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios),),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Text(
                    'My Appointments',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),

                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search"),
                ),
                SizedBox(
                  height: 20,
                ),

                TabBar(
                  controller: _tabController,
                  indicatorWeight: 2.0,
                  indicatorColor: Colors.blue.shade900,
                  labelColor: Colors.blue.shade900,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    // first tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Upcoming',
                    ),

                    // second tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Past',
                    ),
                  ],
                ),
                // tab bar view here
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      // first tab bar view widget
                      Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(),
                              Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 10),
                              child: Text(
                                '09/04/2022',
                                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                              ),
                            ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Arthopeiologist - Zohaib Khan',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 10),
                                child: Text(
                                  '09/04/2022',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Dentists - Clara Odding',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 10),
                                child: Text(
                                  '09/04/2021',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Cardiologist - Steven Aamir',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 10),
                                child: Text(
                                  '09/04/2022',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Dermatologist - Jibran khan',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                            ],
                          )
                      ),

                      // second tab bar view widget
                      Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                              padding: const EdgeInsets.only(top: 10.0, left: 10),
                              child: Text(
                                '09/04/2022',
                                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                              ),
                            ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Arthopeiologist - Zohaib Khan',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 10),
                                child: Text(
                                  '09/04/2022',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Dentists - Clara Odding',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 10),
                                child: Text(
                                  '09/04/2021',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Cardiologist - Steven Aamir',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),

                              Padding(
                                padding: const EdgeInsets.only(top: 10.0, left: 10),
                                child: Text(
                                  '09/04/2022',
                                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Dermatologist - Jibran khan',
                                      style: TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.blue.shade900,
                                    )
                                  ],
                                ),
                              ),
                              Divider(),

                            ],
                          )
                      ),
                    ],
                  ),
                ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Doctor()));
            },
              child:
                Button1(txt1: 'Book a new appointment',)
          ),
              ],
            ),
          ),
        ),
    );
  }
}
