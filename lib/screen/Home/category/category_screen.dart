import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/Home/laptop/laptop_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            child:appbar("Categories", "Select your category",context)
            /*Column(
              children: [
                SizedBox(
                  height: Get.height/24.61,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 15.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Get.to(() => HomeScreen());
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          color: textColorBlack,
                          fontFamily: "SegoeRegular",
                          fontSize: 19,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "Categories",
                  style: TextStyle(
                    color: textColorBlack,
                    fontFamily: "SegoeRegular",
                    fontSize: 27,
                  ),
                ),
                Text(
                  "Select your category",
                  style: TextStyle(
                    color: gray,
                    fontFamily: "SegoeRegular",
                    fontSize: 16,
                  ),
                )
              ],
            ),*/
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height/6),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeCircleAvatar((){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LaptopScreen(),));
                        },webcam, "Webcam"),
                        homeCircleAvatar((){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LaptopScreen(),));
                        },sound, "Sounds "),
                        homeCircleAvatar((){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LaptopScreen(),));
                        },usb, "USB"),
                        homeCircleAvatar((){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LaptopScreen(),));
                        },joy_stick, "Joy Stick"),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeCircleAvatar((){
                          Get.to(()=>LaptopScreen());
                        },phone, "Phone"),
                        homeCircleAvatar((){
                          Get.to(()=>LaptopScreen());
                        },laptop_category, "Laptop"),
                        homeCircleAvatar((){
                          Get.to(()=>LaptopScreen());
                        },charger, "Charger"),
                        homeCircleAvatar((){
                          Get.to(()=>LaptopScreen());
                        },gamePad, "Gamepad"),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        homeCircleAvatar((){
                          Get.to(()=>LaptopScreen());
                        },machine, "Machine"),
                        homeCircleAvatar((){
                          Get.to(()=>LaptopScreen());
                        },projector, "Projector"),
                        homeCircleAvatar((){
                          Get.to(()=>LaptopScreen());
                        },tv, "TV"),
                        homeCircleAvatar((){
                          Get.to(()=>LaptopScreen());
                        },jack, "Jack"),
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
