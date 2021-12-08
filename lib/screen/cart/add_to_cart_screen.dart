import 'package:e_commerce_app/controller/add_cart_controller.dart';
import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/profile/payment/payment_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddCartScreen extends StatelessWidget {
  AddCartController addCartController = Get.put(AddCartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height / 1.8,
            width: Get.width,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height / 24.61,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Get.back();
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
                SizedBox(
                  height: Get.height / 29.53,
                ),
                Obx(
                  () => Container(
                    height: Get.height / 5.09,
                    width: Get.width / 1.71,
                    child: Image.asset(
                      addCartController.laptopSelect1.isTrue
                          ? laptop4
                          : addCartController.laptopSelect2.isTrue?laptop3:addCartController.laptopSelect3.isTrue?laptop5:laptop2,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height / 36.91,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: addCartContainer(laptop4),
                      onTap: () {
                        if (addCartController.laptopSelect1.isTrue ||
                            addCartController.laptopSelect2.isTrue ||
                            addCartController.laptopSelect3.isTrue) {
                          addCartController.laptopSelect1(false);
                          addCartController.laptopSelect2(false);
                          addCartController.laptopSelect3(false);
                        }
                        addCartController.laptopSelect1(true);

                        // addCartController.laptopSelect1.value=!addCartController.laptopSelect1.value;
                      },
                    ),
                    SizedBox(width: Get.width / 39.27),
                    InkWell(
                        onTap: () {
                          if (addCartController.laptopSelect1.isTrue ||
                              addCartController.laptopSelect2.isTrue ||
                              addCartController.laptopSelect3.isTrue) {
                            addCartController.laptopSelect1(false);
                            addCartController.laptopSelect2(false);
                            addCartController.laptopSelect3(false);
                          }
                          addCartController.laptopSelect2(true);
                        },
                        child: addCartContainer(laptop3)),
                    SizedBox(width: Get.width / 39.27),
                    InkWell(
                        onTap: () {
                          if (addCartController.laptopSelect1.isTrue ||
                              addCartController.laptopSelect2.isTrue ||
                              addCartController.laptopSelect3.isTrue) {
                            addCartController.laptopSelect1(false);
                            addCartController.laptopSelect2(false);
                            addCartController.laptopSelect3(false);
                          }
                          addCartController.laptopSelect3(true);
                        },
                        child: addCartContainer(laptop5)),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(add_cart_background), fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 2.11),
            child: Container(
              height: Get.height / 1.85,
              width: Get.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
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
                              "New LED Surface Laptop 3",
                              style: TextStyle(
                                color: blackLight,
                                fontSize: 20,
                                fontFamily: "SegoeSemiBold",
                              ),
                            ),
                            Obx(
                              () => InkWell(
                                onTap: () {
                                  addCartController.favourite.value =
                                      !addCartController.favourite.value;
                                  // print(homeController.favourite.value);
                                },
                                child:
                                    addCartController.favourite.value == false
                                        ? Icon(
                                            Icons.favorite_border,
                                            color: appColor,
                                            size: 25,
                                          )
                                        : Icon(
                                            Icons.favorite,
                                            color: appColor,
                                            size: 25,
                                          ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          unratedColor: grayBlue,
                          itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) =>
                              SvgPicture.asset(star_fill),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "USD 295",
                          style: TextStyle(
                            color: appColor,
                            fontSize: 25,
                            fontFamily: "SegoeBold",
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Select Color",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeBold",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => InkWell(
                                onTap: () {
                                  if (addCartController.selectColor.isTrue ||
                                      addCartController.selectColor2.isTrue ||
                                      addCartController.selectColor3.isTrue) {
                                    addCartController.selectColor(false);
                                    addCartController.selectColor2(false);
                                    addCartController.selectColor3(false);
                                  }
                                  addCartController.selectColor(true);

                                  print("Yellow");
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  child: addCartController.selectColor.isTrue
                                      ? Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white),
                                        )
                                      : Container(),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: primaryYellow),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Obx(
                              () => InkWell(
                                onTap: () {
                                  if (addCartController.selectColor.isTrue ||
                                      addCartController.selectColor2.isTrue ||
                                      addCartController.selectColor3.isTrue) {
                                    addCartController.selectColor(false);
                                    addCartController.selectColor2(false);
                                    addCartController.selectColor3(false);
                                  }
                                  addCartController.selectColor2(true);
                                  print("purple");
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  child: addCartController.selectColor2.isTrue
                                      ? Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white),
                                        )
                                      : Container(),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: purple),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Obx(
                              () => InkWell(
                                onTap: () {
                                  if (addCartController.selectColor.isTrue ||
                                      addCartController.selectColor2.isTrue ||
                                      addCartController.selectColor3.isTrue) {
                                    addCartController.selectColor(false);
                                    addCartController.selectColor2(false);
                                    addCartController.selectColor3(false);
                                  }
                                  addCartController.selectColor3(true);
                                  print("DarkBlue");
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  child: addCartController.selectColor3.isTrue
                                      ? Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: white),
                                        )
                                      : Container(),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: NeutralDark),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "Specification",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeBold",
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 40.0),
                              child: Text(
                                "Shown:",
                                style: TextStyle(
                                  color: NeutralDark,
                                  fontSize: 14,
                                  fontFamily: "SegoeRegular",
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Laser",
                                  style: TextStyle(
                                    color: NeutralGrey,
                                    fontSize: 14,
                                    fontFamily: "SegoeRegular",
                                  ),
                                ),
                                Text(
                                  "Blue/Anthracite/Watermelon/",
                                  style: TextStyle(
                                    color: NeutralGrey,
                                    fontSize: 14,
                                    fontFamily: "SegoeRegular",
                                  ),
                                ),
                                Text(
                                  "White",
                                  style: TextStyle(
                                    color: NeutralGrey,
                                    fontSize: 14,
                                    fontFamily: "SegoeRegular",
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Style:",
                              style: TextStyle(
                                color: NeutralDark,
                                fontSize: 14,
                                fontFamily: "SegoeRegular",
                              ),
                            ),
                            Text(
                              "CD0113-400",
                              style: TextStyle(
                                color: NeutralGrey,
                                fontSize: 14,
                                fontFamily: "SegoeRegular",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                          style: TextStyle(
                            color: NeutralGrey,
                            fontSize: 14,
                            fontFamily: "SegoeRegular",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: MaterialButton(
                            onPressed: () {
                              Get.off(PaymentScreen());
                            },
                            height: 50,
                            minWidth: 240,
                            color: appColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "ADD TO CART",
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontFamily: "SegoeBold",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
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
          )
        ],
      ),
    );
  }
}
