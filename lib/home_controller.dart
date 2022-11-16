import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier{


  bool isRightDoorLock = true;

  void updateRightDoorLock(){
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }
}