import 'package:e_commerce_app/controller/home_controller.dart';
import 'package:e_commerce_app/screen/Home/best_selling/best_selling_screen.dart';
import 'package:e_commerce_app/screen/Home/category/category_screen.dart';
import 'package:e_commerce_app/screen/Home/filter/filter_screen.dart';
import 'package:e_commerce_app/screen/Home/laptop/laptop_screen.dart';
import 'package:e_commerce_app/screen/Home/sort/sort_screen.dart';
import 'package:e_commerce_app/screen/auth_screen/signIn_screen.dart';
import 'package:e_commerce_app/screen/favourite/favourite_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeController homeController = Get.put(HomeController());
  List<Map> images = [
    {"image":laptop,"background":background},
    {"image":laptop2,"background":background},
    {"image":laptop3,"background":background2},
    {"image":laptop4,"background":background2},
    {"image":laptop5,"background":background3},
    {"image":laptop6,"background":background3},
  ];



  List<Map> images2 = [
    {"image":laptop5,"background":background3},
    {"image":laptop6,"background":background3},
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
            child: searchBar(
                    (){
                      Get.off(()=>FilterScreen());
                    },
                    (){
                      Get.off(()=>SortScreen());
                    }),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height /6),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.only(left:10,right: 10,top: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            homeCircleAvatar((){
                              Get.to(()=>CategoryScreen());
                            },menu_icon, "Categories"),
                            homeCircleAvatar((){
                              Get.to(()=>FavouriteScreen());
                            },star, "Favorites"),
                            homeCircleAvatar((){
                              Get.to(()=>CategoryScreen());
                            },gift_icon, "Gifts"),
                            homeCircleAvatar((){
                              Get.to(()=>BestSellingScreen());
                            },people, "Best selling"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                            padding: EdgeInsets.only(bottom: 20),
                            physics: NeverScrollableScrollPhysics(),
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
                                      Get.to(()=>LaptopScreen());
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
                                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(width: 10,),
                                            Text("Surface laptop 3",style: TextStyle(color: blackShade1,fontFamily: "SegoeRegular",fontSize: Get.height/46.13),),
                                            SizedBox(width: 18),
                                            Obx(()=> InkWell(
                                                  onTap: (){
                                                     homeController.favourite[index] = !homeController.favourite[index];
                                                     // print(homeController.favourite.value);
                                                  },
                                                  child:  homeController.favourite[index]==false?Icon(Icons.favorite_border,color: appColor,):Icon(Icons.favorite,color: appColor,),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height:10),
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
                        // SizedBox(height: 15,),
                        Container(
                          height: 130,
                          width: double.infinity,
                          child: Padding(
                            padding:  EdgeInsets.only(left: 25),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                     Text("30%",style: TextStyle(fontSize: 30,fontFamily: "poppinsRegular",color: white,fontWeight: FontWeight.w600),),
                                     Padding(
                                       padding: EdgeInsets.only(top: 7.0),
                                       child: Text("off",style: TextStyle(fontSize: 18,fontFamily: "poppinsRegular",color: white,fontWeight: FontWeight.w100),),
                                     )
                                  ],
                                ),
                                MaterialButton(
                                    onPressed: (){},
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  height: 25,
                                  minWidth: 35,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                                  color: white,
                                  child: Text("Shop Now",style: TextStyle(fontSize: 8,fontFamily: "SegoeSemiBold",color: appColor),),
                                )
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(banner),fit: BoxFit.fill
                            )
                          ),
                        ),
                        SizedBox(height: 30,),
                        GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(bottom: 20),
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2/2.5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 15
                          ),
                          itemCount: images2.length,
                          itemBuilder: (context, index) => Container(
                            height: 150,
                            width:160,
                            child: Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 150,
                                  width: double.infinity,
                                  child: Image.asset(images2[index]["image"]),
                                  decoration: BoxDecoration(
                                      color: lightBlue,
                                      image: DecorationImage(
                                          image: AssetImage(images2[index]["background"]),
                                          fit: BoxFit.fill
                                      ),
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                                  ),
                                ),
                                Positioned(
                                  top: 160,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 10),
                                          Text("Surface laptop 3",style: TextStyle(color: blackShade1,fontFamily: "SegoeRegular",fontSize: Get.height/46.13),),
                                          SizedBox(width: 18),
                                          Obx(()=> InkWell(
                                            onTap: (){
                                              homeController.favourite2[index] = !homeController.favourite2[index];
                                              // print(homeController.favourite.value);
                                            },
                                            child:  homeController.favourite2[index]==false?Icon(Icons.favorite_border,color: appColor,):Icon(Icons.favorite,color: appColor,),
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


                        // Column(
                        //   children: [
                        //     CircleAvatar(
                        //       radius: 35,
                        //       backgroundColor: grayLight1,
                        //       child: SvgPicture.asset(star,height: 25,width: 25,),
                        //     ),
                        //     SizedBox(height: 5,),
                        //     Text("Categories",style: TextStyle(fontSize: 16,fontFamily: "SegoeRegular",color: appColor),)
                        //   ],
                        // )
                      ],
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
            ),
          )
        ],
      ),
    );
  }
}
