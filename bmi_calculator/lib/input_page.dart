import 'dart:math';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'costomWidgets.dart';
import 'resultPage.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  var height;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR",
          ),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      onPressed: (){
                        setState(() {
                          selectedGender=Gender.male;
                        });
                      },
                      color: selectedGender==Gender.male ? kActiveCardColor: kInactiveCardColor,
                      cardChild: ContainerContent(
                        genderIcon: FontAwesomeIcons.mars,
                        gender: "MALE",
                        color: kIconColor,
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      onPressed: (){
                        setState(() {
                          selectedGender=Gender.female;
                        });
                      },
                      color: selectedGender==Gender.female ? kActiveCardColor: kInactiveCardColor,
                      cardChild: ContainerContent(
                        gender:"FEMALE",
                        genderIcon: FontAwesomeIcons.venus,
                        color: kIconColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("HEIGHT",
                          style: labelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,

                            children: <Widget>[
                              Text(heightValue.toString(),
                              style: boldFont),
                              Text("cm",
                                style: labelTextStyle),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              thumbColor: kBottomContainerColor,
                              overlayColor: Color(0x26EB1555),
                            ),
                            child: Slider(
                              min: 30,
                              max: 210,
                              value: heightValue.toDouble(),
                              inactiveColor: kIconColor,
                              onChanged: (double newValue){
                                setState(() {
                                  heightValue=newValue.round().toDouble();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      color: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      cardChild: BottomContainerContent(
                        title: "WEIGHT",
                        value: weight,
                        leftFloatingButton: (){
                          setState(() {
                            (weight>1)? weight--: weight;
                          });
                        },
                        rightFloatingButton: (){
                          setState(() {
                            (weight<300) ? weight++ : weight;
                          });
                        },
                      ),
                      color: kActiveCardColor,
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: ReusableCard(
                      cardChild: BottomContainerContent(
                        title: "AGE",
                        value: age,
                        leftFloatingButton: (){
                          setState(() {
                            (age>1)? age--: age;
                          });
                        },
                        rightFloatingButton: (){
                          setState(() {
                            (age<100) ? age++ : age;
                          });
                        },

                      ),
                      color: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: BottomButton(
                buttonName: "CALCULATE",
                onTapped: (){
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultsPage()),
                    );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



