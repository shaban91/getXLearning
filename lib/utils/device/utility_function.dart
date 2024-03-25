import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EUtilFunctions {
  EUtilFunctions._();

  static double getDeviceHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getDeviceWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double getToolbarHeigt() {
    return kToolbarHeight;
  }
}
