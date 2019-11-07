import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'constants.dart';
import 'custonWidgets.dart';
import 'package:geolocator/geolocator.dart';

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
            onTap: () {
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFBFBFB),
        title: Text(
          "london".toUpperCase(),
          style: appBarTextStyle,
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Container(

                child: Text(
                  "sunny".toUpperCase(),
                  style: weatherTextStyle,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Image.asset(
                  "images/sunny.png",
                  height: 200,
                  width: 200,
                ),
              ),
              //weather details
              SizedBox(
                height: 27,
              ),

              //TEMPARATURE UPPER
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "20",
                              style: TextStyle(
                                fontSize: 50,
                                fontFamily: "NumberFont",
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 9),
                            child: Text(
                              "o",
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: "NumberFont",
                              ),
                            ),
                          ),
                        ],
                      ),
                      //TEMPARATURE LOWER
                      SizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            //padding: EdgeInsets.only(top: 20),
                            child: Row(
                              children: <Widget>[
                                Image.asset("images/down_arrow.png",
                                  scale: 20,),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "17",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "NumberFont",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Image.asset("images/up_arrow.png",
                                  scale: 20,),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "25",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "NumberFont",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("details". toUpperCase(),
                          style: detailsTextStyle,
                        ),
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Feels Like".toUpperCase(),
                                  style: subDetailsTextStyle,),
                                Text("Humidity".toUpperCase(),
                                  style: subDetailsTextStyle,),
                                Text("Wind".toUpperCase(),
                                  style: subDetailsTextStyle,),
                                Text("Visibility".toUpperCase(),
                                  style: subDetailsTextStyle,),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("22",
                                  style: subDetailsTextStyle2,),
                                Text("36",
                                  style: subDetailsTextStyle2,),
                                Text("20.9",
                                  style: subDetailsTextStyle2,),
                                Text("10",
                                  style: subDetailsTextStyle2,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


