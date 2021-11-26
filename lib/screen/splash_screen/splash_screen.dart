import 'package:e_commerce_app/controller/splash_controller.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SplashScreen extends StatelessWidget {
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height:Get.height,
          width: Get.width,
          child: SvgPicture.asset(splashScreenImage,fit: BoxFit.fill,),
          // decoration: BoxDecoration(
          //   color: Colors.white,
          //   image: DecorationImage(
          //     image:AssetImage(splashScreenImage),
          //     fit: BoxFit.fill
          //   )
          // ),
        ),

    );
  }
}


