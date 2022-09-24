import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/components/button.dart';

import '../components/constants.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 3, vsync: this);
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
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image(
                        height: 110,
                        width: 110,
                        image: AssetImage('images/dp.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Dr. Taimoor Shah', style: textStyylB),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Cardiologist', style: textStyyl),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('2 Rue de Ermisende\nLuxemberg 3km',
                            style: textStyyl),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.orange,
                              size: 15,
                            ),
                            Text('(214)', style: textStyyl),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reUse_container(
                          date: 'Thu, 09 April', slot: '121 slots available'),
                      SizedBox(
                        width: 20,
                      ),
                      reUse_container(
                          date: 'Fri, 10 April', slot: '211 slots available'),
                      SizedBox(
                        width: 20,
                      ),
                      reUse_container(
                          date: 'Mon, 13 April', slot: '221 slots available'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Button1(txt1: 'Book Appointment'),
              ),
              TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.blue.shade900,
                  labelColor: Colors.blue.shade900,
                  unselectedLabelColor: Colors.black,
                  indicatorWeight: 3,
                  tabs: [
                    Tab(
                      child: Text('Doctor'),
                    ),
                    Tab(
                      child: Text('Clinic'),
                    ),
                    Tab(
                      child: Text('Feedback'),
                    )
                  ]),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  // first tab bar view widget
                  Center(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Language',
                        style: textStyylB
                      ),
                      Row(
                        children: [
                          Flag.fromCode(
                            FlagsCode.PK,
                            height: 15,
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Urdu', style: textStyyl,),
                          ),
                          Flag.fromCode(
                            FlagsCode.US,
                            height: 15,
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('English', style: textStyyl,),
                          ),
                          Flag.fromCode(
                            FlagsCode.FR,
                            height: 15,
                            width: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('French', style: textStyyl),
                          ),
                        ],
                      ),
                      Divider(),
                      Text(
                        'Education',
                        style:textStyylB
                      ),

                      Row(
                        children: [
                          Icon(Icons.circle_outlined), SizedBox(
                            width: 5,
                          ),
                          Text('UCL - Clinic Saint-Luc (1987- 1989)- Doctor', style: textStyyl),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text('UCL - Clinic Saint-Luc (1987- 1989)- Doctor', style: textStyyl),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.circle_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text('UCL - Clinic Saint-Luc (1987- 1989)- Doctor', style: textStyyl),
                        ],
                      ),
                      Divider(),
                      Text(
                        'Publications',
                        style: textStyylB
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Row(
                          children: [
                            Icon(Icons.circle_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                                'I am using Flutter to make a list of information\nabout movies.Now I want the cover image on\nthe left to be a rounded corners picture.', style: textStyyl),
                          ],
                        ),
                      ),
                    ],
                  )),
                  Center(
                    child: Text('hello'),
                  ),
                  Center(
                    child: Text('hello'),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class reUse_container extends StatelessWidget {
  final String date;
  final String slot;

  const reUse_container({Key? key, required this.date, required this.slot})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(slot, style: textStyyl),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    '08:00',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    '12:00',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    '15:00',
                    style: TextStyle(color: Colors.white),
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
