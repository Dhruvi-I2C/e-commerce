import 'package:e_commerce_app/screen/auth_screen/signIn_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FingerprintVerifyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
          ),
          Padding(
            padding:  EdgeInsets.only(top: Get.height/5.09),
            child: Container(
              height: Get.height/1.23,
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.only(top:Get.height/11.36),
                child: Column(
                  children: [
                    Text("Fingerprint",style: TextStyle(color: textColorBlack,fontFamily: "SegoeRegular",fontSize: 28),),
                    Text("Please lift and rest your finger",style: TextStyle(color: gray,fontFamily: "SegoeRegular",fontSize: 17),),
                    SizedBox(height: Get.height/9.23),
                    SvgPicture.asset(fingerPrint),
                    SizedBox(height: Get.height/4.92),
                    MaterialButton(
                      height: Get.height/14.76,
                        minWidth: Get.width/1.64,
                        onPressed: (){
                           Get.to(SignInScreen());
                        },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      color: appColor,
                      child: Text("NEXT",style: TextStyle(color: white,fontFamily: "SegoeBold",fontSize: 16),),
                    ),
                    SizedBox(height: Get.height/18.45,),
                    Text("Skip",style: TextStyle(color: textColorBlack,fontFamily: "SegoeRegular",fontSize: 15,decoration: TextDecoration.underline)),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
              ),
            ),
          ),
          Positioned(
            top: Get.height/7.38,
            left: Get.width/2.7,
            child: SvgPicture.asset(profileDefault,width: Get.width/3.27,height: Get.height/6.15,),
          )
        ],
      ),
    );
  }
}
