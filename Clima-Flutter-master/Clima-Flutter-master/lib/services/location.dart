import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
class Location extends StatelessWidget {

  Position _position;
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async{
    try {
      _position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude=_position.latitude;
      longitude=_position.longitude;
    }
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
