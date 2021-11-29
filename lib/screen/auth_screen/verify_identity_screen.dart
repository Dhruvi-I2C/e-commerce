import 'package:e_commerce_app/screen/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter_svg/svg.dart';

class VerifyIdentity extends StatelessWidget {
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
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: Get.height / 10),
                child: Column(
                  children: [
                    Text(
                      "Verify your identity",
                      style: TextStyle(
                          color: textColorBlack,
                          fontFamily: "SegoeRegular",
                          fontSize: 28),
                    ),
                    Text(
                      "We have just sent a code to (+84) 999 999 999",
                      style: TextStyle(
                          color: gray,
                          fontFamily: "SegoeRegular",
                          fontSize: 16),
                    ),
                    SizedBox(height: Get.height/9.23,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        otpContainer(),
                        otpContainer(),
                        otpContainer(),
                        otpContainer()
                        // OTPTextField(
                        //   length: 4,
                        //   width: 300,
                        //   fieldWidth: 60,
                        //   outlineBorderRadius: 15,
                        //   otpFieldStyle: OtpFieldStyle(
                        //     borderColor: yellow,
                        //     focusBorderColor: yellow,
                        //
                        //   ),
                        //   style: TextStyle(
                        //       fontSize: 17
                        //   ),
                        //   textFieldAlignment: MainAxisAlignment.spaceEvenly,
                        //   fieldStyle: FieldStyle.box,
                        //   onCompleted: (pin) {
                        //     print("Completed: " + pin);
                        //   },
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height/36.909,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "I didn’t receive code.",
                          style: TextStyle(
                              color: gray,
                              fontFamily: "SegoeRegular",
                              fontSize: 17),
                        ),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              " Resend Code",
                              style: TextStyle(
                                  color: yellow,
                                  fontFamily: "SegoeSemiBold",
                                  fontSize: 16),
                            )),
                      ],
                    ),
                    SizedBox(height: Get.height/4.92,),
                    MaterialButton(
                      height: Get.height / 14.76,
                      minWidth: Get.width / 1.31,
                      onPressed: () {
                        Get.off(()=>DashboardScreen());
                        print("Sign IN");
                        // Get.to(VerifyIdentity());
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: appColor,
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            color: white,
                            fontFamily: "SegoeBold",
                            fontSize: 16),
                      ),
                    ),

                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
            ),
          ),
          Positioned(
            top: Get.height / 7.38,
            left: Get.width / 2.7,
            child: SvgPicture.asset(
              identity,
              width: Get.width/4.36,
              height: Get.height/8.202,
            ),
          )
        ],
      ),
    );
  }
}
