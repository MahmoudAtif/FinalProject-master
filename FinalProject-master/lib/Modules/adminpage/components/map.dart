import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tbib_toast/tbib_toast.dart';

import '../../../constants/mycolors.dart';

class CustomAdminMap extends StatelessWidget {
  double lat;
  double long;


  CustomAdminMap({required this.lat,required this.long});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        zoomControlsEnabled: false,
        myLocationButtonEnabled: false,
        initialCameraPosition: CameraPosition(
          bearing: 0.0,
          target: LatLng(lat, long),
          tilt: 0.0,
          zoom: 17,
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 8, 30),
        child: FloatingActionButton(
          backgroundColor: MyColors.blue,
          onPressed: (){
            Toast.show("Success Placed", context,duration: 3,backgroundColor: Colors.green);
            Navigator.of(context).pop();
          },
          child: Icon(Icons.place, color: Colors.white),
        ),
      ),
    );
  }
}
