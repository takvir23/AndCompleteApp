import 'package:flutter/material.dart';
import 'dart:math';
import 'constants.dart';

double convertHeight(double height){
  return (height/100);

}

String calculateBMI(){
  double bmi = weight/ pow(convertHeight(heightValue), 2);
  return bmi.toStringAsFixed(1);
}

String identfyStatus(){
  double value = double.parse(calculateBMI());
  if(value<18.5){
    return "UNDERWEIGHT";
  }
  else if(value>=18.5 && value<25){
    return "NORMAL";
  }
  else if(value>=25 && value<30){
    return "OVERWEIGHT";
  }
  else {
    return "OBESE";
  }
}

String healtRisk(){
  double value = double.parse(calculateBMI());
  if(value<18.5){
    return "Risk of developing problems such as nutritional deficiency and osteoporosis";
  }
  else if(value>=18.5 && value<23){
    return "Low Risk (healthy range)";
  }
  else if(value>=23 && value<27.5){
    return "Moderate risk of developing heart disease, high blood pressure, stroke, diabetes";
  }
  else {
    return "High risk of developing heart disease, high blood pressure, stroke, diabetes ";
  }
}