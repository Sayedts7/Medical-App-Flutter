import 'package:flutter/material.dart';
import 'package:medical_app/Screens/my_appointments.dart';
import 'package:medical_app/Screens/profile.dart';
import 'package:medical_app/Screens/start_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xffecf1fa),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/dp.png'),
                ),
                accountName: Text('Taimoor Shah'),
                accountEmail: Text('sayedts00777@gmail.com')),

            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text('My Appointments'),
            ),

            ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text('New Appointments'),
            ),
SizedBox(
  height: 400,
),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>start_screen()));
              },
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
              ),
            )
          ],

        ),
      ),

      body: SafeArea(
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
     Container(

         color: Colors.white,
         child: Padding(
         padding: const EdgeInsets.all(15.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [ Row(
           children: [
             IconButton(onPressed: () {
               _globalKey.currentState?.openDrawer();
             },
                 icon: Icon(Icons.menu)),

             SizedBox(
               width: MediaQuery.of(context).size.width*0.65,
             ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
            }, icon:  Icon(Icons.account_circle_outlined, size: 30,),)

           ],
           ),

           Padding(
             padding: const EdgeInsets.only(top: 20.0, bottom: 30),
             child: Text('Dashboard', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
           ),],
         ),
         ),
     ),
            Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30, top: 20,bottom: 20 ),
                child:    TextFormField(

                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search"

                  ),

                )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> My_Appoint()));
                },
                child: Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Appointments',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 20,
                        ),
                        Image(image: AssetImage('images/cal2.png'))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
