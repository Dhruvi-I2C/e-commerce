import 'package:e_commerce_app/controller/add_address_controller.dart';
import 'package:e_commerce_app/controller/setting_controller.dart';
import 'package:e_commerce_app/screen/profile/profile_screen.dart';
import 'package:e_commerce_app/screen/profile/settings/changePassword/change_password.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  AddAddressController addressController = Get.put(AddAddressController());
  SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            child: appbar("Settings", "Please enter your new address"),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Notification",
                              style: TextStyle(
                                color: NeutralDark,
                                fontSize: 22,
                                fontFamily: "SegoeSemiBold",
                              ),
                            ),
                            Obx(
                              () => FlutterSwitch(
                                width: 80.0,
                                height: 40.0,
                                activeSwitchBorder:
                                    Border.all(color: appColor, width: 1.5),
                                inactiveSwitchBorder:
                                    Border.all(color: grayLight, width: 1.5),
                                activeColor: white,
                                toggleColor:
                                    settingController.switchValue.isFalse
                                        ? grayLight
                                        : appColor,
                                toggleSize: 35.0,
                                inactiveColor: white,
                                value: settingController.switchValue.value,
                                borderRadius: 30.0,
                                padding: 3.0,
                                showOnOff: true,
                                onToggle: (val) {
                                  settingController.switchValue.value = val;
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Username",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        addressTextField("Enter Username", TextInputType.name,false),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Street Address 2 (Optional)",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        addressTextField("Enter Street Address2",
                            TextInputType.streetAddress,false),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "City",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        addressTextField("Enter City", TextInputType.name,false),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Zip Code",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        addressTextField(
                            "Enter Zip Code", TextInputType.number,false),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Phone Number",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        addressTextField(
                            "Enter Phone Number", TextInputType.phone,false),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: InkWell(
                            onTap: (){
                              Get.to(()=>ChangePassword());
                            },
                            child: Text(
                              "Change Password",
                              style: TextStyle(
                                  color: NeutralDark,
                                  fontSize: 20,
                                  fontFamily: "SegoeRegular",
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Get.defaultDialog(
                                  title: "",
                                  content: Column(
                                    children: [
                                      SvgPicture.asset(logout),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Your order has been Placed successfully.",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: black,
                                            fontFamily: "SegoeRegular"),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          MaterialButton(
                                            onPressed: () {},
                                            height: 40,
                                            minWidth: 100,
                                            elevation: 0,
                                            color: appColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(40)
                                            ),
                                            child: Text(
                                              "Yes",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: white,
                                                  fontFamily: "SegoeRegular"),
                                            ),
                                          ),

                                          MaterialButton(
                                            onPressed: () {},
                                            height: 40,
                                            minWidth: 100,
                                            elevation: 0,
                                            color: white,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(40),
                                              side: BorderSide(color: whiteLight,width: 1.5)
                                            ),
                                            child: Text(
                                              "No",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: appColor,
                                                  fontFamily: "SegoeRegular"),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ));
                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                color: NeutralDark,
                                fontSize: 19,
                                fontFamily: "SegoeSemiBold",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: MaterialButton(
                            height: Get.height / 14.76,
                            minWidth: Get.width / 1.31,
                            onPressed: () {
                              Get.off(()=>ProfileScreen());
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
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
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
