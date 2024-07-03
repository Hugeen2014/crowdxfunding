import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationController extends GetxController{
  var currentIndex = 0.obs;

  getIndex() => currentIndex.value;

  setIndex(val) => currentIndex.value = val;


  static const navigationBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "HOME",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.transparent,),
      label: "CREATE CAMPAIGN",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "PROFILE",
    ),
  ];

}