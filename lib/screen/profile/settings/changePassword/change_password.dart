import 'package:e_commerce_app/controller/add_address_controller.dart';
import 'package:e_commerce_app/controller/setting_controller.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class ChangePassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            child: appbar("Change Password", "Change your password from here",context),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height/4.92,
                    ),
                    Text(
                      "Old Password",
                      style: TextStyle(
                        color: NeutralDark,
                        fontSize: 17,
                        fontFamily: "SegoeSemiBold",
                      ),
                    ),
                    SizedBox(
                      height:Get.height/73.82,
                    ),
                    addressTextField("Enter Old Password",
                        TextInputType.streetAddress,true),
                    SizedBox(
                      height: Get.height/24.61,
                    ),
                    Text(
                      "New Password",
                      style: TextStyle(
                        color: NeutralDark,
                        fontSize: 17,
                        fontFamily: "SegoeSemiBold",
                      ),
                    ),
                    SizedBox(
                      height: Get.height/73.82,
                    ),
                    addressTextField("Enter New Password", TextInputType.name,true),
                    SizedBox(
                      height: Get.height/5.68,
                    ),
                    Center(
                      child: MaterialButton(
                        height: Get.height / 14.76,
                        minWidth: Get.width / 1.31,
                        onPressed: () {
                          Get.back();
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: appColor,
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: white,
                              fontFamily: "SegoeBold",
                              fontSize: 16),
                        ),
                      ),
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
