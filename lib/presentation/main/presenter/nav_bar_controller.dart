import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_design_ai/presentation/home/ui/screens/home_screen.dart';

class NavBarController extends GetxController {
  // Observable selected index
  var selectedIndex = 0.obs;

  // List of widget pages corresponding to each bottom navigation item
  final List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  // Update selected index
  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}
