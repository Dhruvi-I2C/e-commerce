import 'package:e_commerce_app/controller/add_cart_controller.dart';
import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget textField({String hintText,
  String preFixImage,
  TextInputType type,
  String suffixImage}) {
  return TextField(
    keyboardType: type,
    cursorColor: textColorBlack,
    textAlignVertical: TextAlignVertical.center,
    style: TextStyle(
        color: textColorBlack, fontFamily: "SegoeRegular", fontSize: 16),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      prefixIcon: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgPicture.asset(preFixImage),
      ),
      suffixIcon: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SvgPicture.asset(suffixImage),
      ),
      hintText: hintText,
      hintStyle: TextStyle(
          color: gray, fontFamily: "SegoeRegular", fontSize: 16),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: whiteLight)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: whiteLight)
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: whiteLight)
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: whiteLight)
      ),
      fillColor: whiteLight,
      filled: true,

    ),
  );
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(BuildContext context, Widget child,
      AxisDirection axisDirection) {
    return child;
  }
}

class BottomNavigationElement {
  Widget bottomBarView;
  BottomNavigationBarItem bottomBarItem;
  GlobalKey<NavigatorState> navigationKey;

  BottomNavigationElement({
    this.bottomBarView,
    this.bottomBarItem,
    this.navigationKey,
  });
}

Widget homeCircleAvatar(onTap, image, text) =>
    Column(
      children: [
        InkWell(
          onTap: onTap,
          child: CircleAvatar(
            radius: 35,
            backgroundColor: grayLight1,
            child: SvgPicture.asset(image, height: 25, width: 25,),
          ),
        ),
        SizedBox(height: 5,),
        Text(text, style: TextStyle(
            fontSize: 16, fontFamily: "SegoeRegular", color: appColor),)
      ],
    );

Widget otpContainer() =>
    Container(
      height: Get.height / 10.86,
      width: Get.width / 5.78,
      child: Column(
        children: [
          TextField(
            cursorColor: textColorBlack,
            style: TextStyle(
                fontSize: 20,
                color: textColorBlack),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
                border: InputBorder.none,
                counterText: '',
                contentPadding: EdgeInsets.only(top: 15)
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              color: yellow,
              thickness: 2,
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: whiteLight,
          borderRadius: BorderRadius.circular(20)
      ),
    );


Widget searchBar(onTap,onTap2) =>
    Column(
      children: [
        SizedBox(height: Get.height / 36.909,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: Get.width / 78.54,),
            Container(
              height: Get.height / 12.03,
              width: Get.width / 1.57,
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
                      color: gray,
                      fontFamily: "SegoeRegular",
                      fontSize: 16),
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
            SizedBox(width: Get.width / 9.82,),
            Padding(
              padding:  EdgeInsets.only(bottom: 15.0),
              child: SvgPicture.asset(favourite_icon, color: appColor,
                height: Get.height / 24.61,
                width: Get.width / 13.09,),
            ),
            SizedBox(width: Get.width / 39.27,),
            Padding(
              padding:  EdgeInsets.only(bottom: 13.0),
              child: SvgPicture.asset(notification, height: Get.height / 21.09,
                width: Get.width / 11.22,),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(width: Get.width / 2.45,),
            SvgPicture.asset(filters),
            SizedBox(width: Get.width / 39.27,),
            InkWell(
              onTap: onTap,
              child: Text("Filters", style: TextStyle(color: blackLight,
                  fontFamily: "MetroPolisRegular",
                  fontSize: 14),),
            ),
            SizedBox(width: Get.width / 4.36,),
            SvgPicture.asset(sort),
            InkWell(
              onTap: onTap2,
              child: Text("Sort", style: TextStyle(color: blackLight,
                  fontFamily: "MetroPolisRegular",
                  fontSize: 14),),
            )
          ],
        )
      ],
    );

Widget addCartContainer(image) =>
    Container(
      height: 72,
      width: 72,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(image),
      ),
    );


Widget appbar(mainText,subText)=>Column(
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
      mainText,
      style: TextStyle(
        color: textColorBlack,
        fontFamily: "SegoeRegular",
        fontSize: 27,
      ),
    ),
    Text(
      subText,
      style: TextStyle(
        color: gray,
        fontFamily: "SegoeRegular",
        fontSize: 16,
      ),
    )
  ],
);