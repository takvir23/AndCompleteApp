import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';


class CustomWidgets extends StatelessWidget {

  void getLocation()async{
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

