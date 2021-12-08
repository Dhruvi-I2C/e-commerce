import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/Home/laptop/laptop_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GiftScreen extends StatelessWidget {
  List images = [
    gift_banner2,
    gift_banner3,
    gift_banner4,
    gift_banner5,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: Get.height,
              width: Get.width,
              // margin: EdgeInsets.only(top: 17),
              color: lightBlue,
              child:appbar("Gifts", "Select your Gifts",context)
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
              padding: EdgeInsets.only(top: 20),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView.builder(
                  itemCount: images.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 120,
                          width: Get.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: black.withOpacity(0.25),
                                blurRadius:3,
                                offset: Offset(0,3)
                              )
                            ],
                            image: DecorationImage(
                              image: AssetImage(
                                images[index]
                              ),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                      ),
                    ),
                )
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
