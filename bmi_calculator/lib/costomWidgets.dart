import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  Function onTapped;
  final String buttonName;
  BottomButton({this.onTapped, this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        margin: EdgeInsets.only(top: 5 ),
        width: double.infinity,
        child: Center(
          child: Text(buttonName,
            style: TextStyle(
                fontSize:16,
                fontWeight: FontWeight.bold),
          ),
        ),
        color: kBottomContainerColor,
      ),
    );
  }
}

class BottomContainerContent extends StatelessWidget {
  final String title;
  final value;
  Function leftFloatingButton;
  Function rightFloatingButton;
  BottomContainerContent({this.title, this.value, this.leftFloatingButton, this.rightFloatingButton});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title,
          style: labelTextStyle,
        ),
        Text(value.toString(),
          style: boldFont,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              heroTag: null,
              elevation: 5,
              mini: true,
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
              backgroundColor: Color(0xFF4C4F5E),
              onPressed: leftFloatingButton,
            ),
            SizedBox(
              width: 7,
            ),
            FloatingActionButton(
              heroTag: null,
              elevation: 5,
              mini: true,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Color(0xFF4C4F5E),
              onPressed: rightFloatingButton,
            ),
          ],
        ),
      ],
    );
  }
}



class ContainerContent extends StatelessWidget {
  ContainerContent({this.genderIcon, this.gender, this.color});
  final IconData genderIcon;
  final String gender;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(genderIcon,
          size: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text(gender,
          style: labelTextStyle),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  Function onPressed;
  ReusableCard ({@required this.color, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10),
        height: 200.0,
        width: 170.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}