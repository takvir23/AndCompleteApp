import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: MainBody(),
    );
  }
}

class MainBody extends StatefulWidget {
  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              print("Add clicked");
            },
            child: Icon(Icons.add, color: Colors.black, size: 30,),
          ),
          SizedBox(
            width: 10,
          )
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Location",
        style: TextStyle(
            color: Colors.black,
        ),
      ),

      ),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}


