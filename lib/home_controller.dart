import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier{
  int selectedBottomTab = 0;

  void onBottomNavigationTabChange(int index){
    selectedBottomTab = index;
    notifyListeners();
  }

  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isTopDoorLock = true;
  bool isBottomDoorLock = true;

  void updateRightDoorLock(){
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }

  void updateLeftDoorLock(){
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }

  void updateTopDoorLock(){
    isTopDoorLock = !isTopDoorLock;
    notifyListeners();
  }

  void updateBottomDoorLock(){
    isBottomDoorLock = !isBottomDoorLock;
    notifyListeners();
  }

  bool isCoolSelected = true;

  void updateIsCoolSelectedTab(){
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  bool isShowTyre = false;

  void showTyreController(int index){
    if(selectedBottomTab != 3 && index == 3){
      isShowTyre = true;
      notifyListeners();
    } else{
      isShowTyre = false;
      notifyListeners();
    }
  }
}