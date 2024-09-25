import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerControllerCustom extends GetxController {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
    log("openDrawer called");
  }

  void closeDrawer() {
    scaffoldKey.currentState?.openEndDrawer();
  }
}
