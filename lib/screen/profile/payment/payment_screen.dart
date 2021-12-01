import 'package:e_commerce_app/controller/signIn_controller.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {
  SignInController signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            child: appbar("Payment", "Add your payment method",context),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 250,
                          width: double.infinity,
                          child: Image.asset(
                            visa_card,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Card Number",
                          style: TextStyle(
                              fontFamily: "SegoeRegular",
                              fontSize: 16,
                              color: grayLight),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                            hintText: "Enter Card Number",
                            preFixImage: number,
                            suffixImage: suffixIcon,
                            type: TextInputType.number),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Cardholder Name",
                          style: TextStyle(
                              fontFamily: "SegoeRegular",
                              fontSize: 16,
                              color: grayLight),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
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
                                padding: const EdgeInsets.all(10.0),
                                child: SvgPicture.asset(person_icon),
                              ),
                              hintText: "Enter Password",
                              hintStyle: TextStyle(
                                  color: gray,
                                  fontFamily: "SegoeRegular",
                                  fontSize: 16),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: whiteLight)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: whiteLight)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: whiteLight)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: whiteLight)),
                              fillColor: whiteLight,
                              filled: true,
                              isDense: true),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              "Month",
                              style: TextStyle(
                                  fontFamily: "SegoeRegular",
                                  fontSize: 16,
                                  color: grayLight),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Text(
                              "Year",
                              style: TextStyle(
                                  fontFamily: "SegoeRegular",
                                  fontSize: 16,
                                  color: grayLight),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.number,
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
                                      padding: const EdgeInsets.all(10.0),
                                      child: SvgPicture.asset(calender),
                                    ),
                                    hintText: "Month",
                                    hintStyle: TextStyle(
                                        color: gray,
                                        fontFamily: "SegoeRegular",
                                        fontSize: 16),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: whiteLight)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: whiteLight)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: whiteLight)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: whiteLight)),
                                    fillColor: whiteLight,
                                    filled: true,
                                    isDense: true),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.number,
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
                                      padding: const EdgeInsets.all(10.0),
                                      child: SvgPicture.asset(calender),
                                    ),
                                    hintText: "Year",
                                    hintStyle: TextStyle(
                                        color: gray,
                                        fontFamily: "SegoeRegular",
                                        fontSize: 16),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: whiteLight)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: whiteLight)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: whiteLight)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: whiteLight)),
                                    fillColor: whiteLight,
                                    filled: true,
                                    isDense: true),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Obx(() => InkWell(
                                  onTap: () {
                                    signInController.checkBool.value =
                                        !signInController.checkBool.value;
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    alignment: Alignment.center,
                                    child: signInController.checkBool.isTrue
                                        ? Icon(
                                            Icons.check,
                                            color: yellow,
                                            size: 15,
                                          )
                                        : SizedBox.shrink(),
                                    decoration: BoxDecoration(
                                        color: white,
                                        border: Border.all(
                                            color: yellow, width: 2)),
                                  ),
                                )),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Remember this card details.",
                              style: TextStyle(
                                  color: gray,
                                  fontFamily: "SegoeRegular",
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: MaterialButton(
                            height: Get.height / 14.76,
                            minWidth: Get.width / 1.31,
                            onPressed: () {
                              Get.defaultDialog(
                                  title: "",
                                  content: Column(
                                    children: [
                                      SvgPicture.asset(smile),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        "Your order has been Placed successfully.",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: black,
                                          fontFamily: "SegoeRegular"
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ));

                              // Get.to(()=>AddAddress());
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: appColor,
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: white,
                                  fontFamily: "SegoeBold",
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
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
