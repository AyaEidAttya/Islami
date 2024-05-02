import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myprovider extends ChangeNotifier{
String lang="en";
ThemeMode themeMode=ThemeMode.light;

void changlang(String langCode ){
  lang=langCode;
   notifyListeners();

}
void changMode(ThemeMode Modee){

  themeMode= Modee;
  notifyListeners();

}
}