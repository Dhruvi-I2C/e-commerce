import 'package:e_commerce_app/controller/dashboard_controller.dart';
import 'package:e_commerce_app/controller/my_order_controller.dart';
import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/dashboard/dashboard_screen.dart';
import 'package:e_commerce_app/screen/profile/myOrder/allOrder/all_order_screen.dart';
import 'package:e_commerce_app/screen/profile/myOrder/recivedOrder/recive_order_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'commingOrder/comming_order_screen.dart';

class MyOrderScreen extends StatelessWidget {

  MyOrderController myOrderController = Get.put(MyOrderController());
  DashBoardController dashBoardController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            child:  Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 15.0,top: 10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        // Get.to(() => HomeScreen());
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
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: Get.width / 78.54,),
                    Container(
                      height: Get.height / 12.03,
                      width: Get.width / 1.40,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: textColorBlack,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                            color: textColorBlack,
                            fontFamily: "SegoeRegular",
                            fontSize: 16),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: Get.height / 73.82,
                              horizontal: Get.width / 39.27),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(search),
                          ),
                          hintText: "Search Product",
                          hintStyle: TextStyle(
                              color: gray, fontFamily: "SegoeRegular", fontSize: 16),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(color: appColor)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(color: appColor)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(color: appColor)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(color: appColor)),
                          fillColor: whiteLight,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      width:Get.width/17.85,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(bottom: 15.0),
                      child: InkWell(
                        onTap: (){
                          dashBoardController.tabIndex.value=1;
                          Navigator.of(context,rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => DashboardScreen()));
                        },
                        child: SvgPicture.asset(favourite_icon, color: appColor,
                          height: 26,
                          width: 26),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 39.27,
                    ),
                    Padding(
                      padding:  EdgeInsets.only(bottom: 13.0),
                      child: SvgPicture.asset(notification, height: 32,
                        width: 32,),
                    )
                  ],
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                  child: TabBar(
                    controller: myOrderController.controller,
                    labelColor: white,
                    indicatorPadding: EdgeInsets.all(7),
                    labelPadding: EdgeInsets.only(top: 5),
                    unselectedLabelColor: blackLight,
                    labelStyle: TextStyle(
                        color: white,
                        fontFamily: "MetroPolisMedium",
                        fontSize: 14
                    ),
                    unselectedLabelStyle:TextStyle(
                        color: blackLight,
                        fontFamily: "MetroPolisMedium",
                        fontSize: 14
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: appColor),
                    tabs: myOrderController.myTabs
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 180),
            child: Container(
              height: 550,
              width: Get.width,
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: TabBarView(
                  controller: myOrderController.controller,
                  children: [
                    AllOrder(),
                    ComingOrder(),
                    ReciveOrder(),
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
          )
        ],
      ),
    );
  }
}
