import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{

  ThemeMode mode=ThemeMode.light;


  changeTheme(ThemeMode themeMode){
    mode=themeMode;
    notifyListeners();
  }
}