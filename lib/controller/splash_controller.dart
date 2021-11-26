import 'dart:async';

import 'package:e_commerce_app/screen/auth_screen/verification_screen.dart';
import 'package:e_commerce_app/screen/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
  @override
  void onInit() { // called immediately after the widget is allocated memory
    Timer(
        Duration(seconds: 5),
            () => Get.off(FingerprintVerifyScreen()));
    super.onInit();
  }
}