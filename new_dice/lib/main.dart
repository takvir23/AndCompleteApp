import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice App"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int done=1;
  int dtwo=2;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    int rand= new Random().nextInt(6);
                    done=rand+1;
                    print(rand);
                  });
                },
                child: Image(
                  image: AssetImage("images/dice$done.png"),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    int rand= new Random().nextInt(6);
                    dtwo=rand+1;
                  });
                },
                child: Image(
                  image: AssetImage("images/dice$dtwo.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



