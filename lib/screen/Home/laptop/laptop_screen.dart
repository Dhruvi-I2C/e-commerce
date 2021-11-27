import 'package:e_commerce_app/controller/home_controller.dart';
import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/cart/add_to_cart_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LaptopScreen extends StatelessWidget {
  HomeController homeController = Get.find();

  List<Map> images = [
    {"image":laptop,"background":background},
    {"image":laptop2,"background":background},
    {"image":laptop3,"background":background2},
    {"image":laptop4,"background":background2},
    {"image":laptop5,"background":background3},
    {"image":laptop6,"background":background3},
    {"image":laptop5,"background":background3},
    {"image":laptop6,"background":background3},
    {"image":laptop2,"background":background2},
    {"image":laptop3,"background":background2},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            child: Column(
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
                  "Laptop",
                  style: TextStyle(
                    color: textColorBlack,
                    fontFamily: "SegoeRegular",
                    fontSize: 27,
                  ),
                ),
                Text(
                  "Select your preffered laptop with your budget",
                  style: TextStyle(
                    color: gray,
                    fontFamily: "SegoeRegular",
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.0),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2/2.5,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 15
                    ),
                    itemCount: images.length,
                    itemBuilder: (context, index) => Container(
                      height: 150,
                      width:160,
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: (){
                              Get.to(()=>AddCartScreen());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 150,
                              width: double.infinity,
                              child: Image.asset(images[index]["image"]),
                              decoration: BoxDecoration(
                                  color: lightBlue,
                                  image: DecorationImage(
                                      image: AssetImage(images[index]["background"]),
                                      fit: BoxFit.fill
                                  ),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                              ),
                            ),
                          ),
                          Positioned(
                            top: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text("Surface laptop 3",style: TextStyle(color: blackShade1,fontFamily: "SegoeRegular",fontSize: Get.height/46.13),),
                                    SizedBox(width: 10,),
                                    Obx(()=> InkWell(
                                      onTap: (){
                                        homeController.favourite3[index] = !homeController.favourite3[index];
                                        // print(homeController.favourite.value);
                                      },
                                      child:  homeController.favourite3[index]==false?Icon(Icons.favorite_border,color: appColor,):Icon(Icons.favorite,color: appColor,),
                                    ),
                                    ),
                                  ],
                                ),
                                SizedBox(height:10,),
                                Padding(
                                  padding:  EdgeInsets.only(left: 10),
                                  child: Text("USD 999",style: TextStyle(color: appColor,fontFamily: "SegoeSemiBold",fontSize: Get.height/43.42),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: white,
                          boxShadow: [
                            BoxShadow(
                                color: black.withOpacity(0.25),
                                blurRadius: 3,
                                offset: Offset(0,2)
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
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
