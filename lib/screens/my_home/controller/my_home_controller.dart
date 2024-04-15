

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomeController extends GetxController{


  /// static but make this dynamic future update when admin panel available todo
  List navTitles = [
    {
      "title": "Home",
      "icon": Icons.home,
    },
    {
      "title": "Skills",
      "icon": Icons.android,
    },
    {
      "title": "Project",
      "icon": Icons.back_hand,
    },
    {
      "title": "Blog",
      "icon": Icons.web,
    },
    {
      "title": "Contact",
      "icon": Icons.quick_contacts_mail,
    },
  ];
}