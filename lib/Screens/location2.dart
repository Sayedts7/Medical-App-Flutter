import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medical_app/Screens/dashboard.dart';
import '../components/button.dart';

class Location2 extends StatefulWidget {
  const Location2({Key? key}) : super(key: key);

  @override
  State<Location2> createState() => _Location2State();
}

class _Location2State extends State<Location2> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(34.239677, 71.957515),
    zoom: 14,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
          title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoard()));
            },
            child: Text('Next'),
          )
      ),
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        myLocationEnabled: true,
      ),


    );
  }
}
