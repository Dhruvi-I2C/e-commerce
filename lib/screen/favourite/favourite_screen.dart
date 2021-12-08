import 'package:e_commerce_app/controller/dashboard_controller.dart';
import 'package:e_commerce_app/screen/Home/filter/filter_screen.dart';
import 'package:e_commerce_app/screen/Home/sort/sort_screen.dart';
import 'package:e_commerce_app/screen/cart/add_to_cart_screen.dart';
import 'package:e_commerce_app/screen/dashboard/dashboard_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FavouriteScreen extends StatelessWidget {
   FavouriteScreen({Key key}) : super(key: key);

   DashBoardController dashBoardController = Get.find();

  List<Map> image = [
    {"image": mobile},
    {"image": earpod},
    {"image": alexa},
    {"image": android_mobile},
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
            child: searchBar(() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilterScreen(),
                  ));
              // Get.off(()=>FilterScreen());
            }, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SortScreen(),
                  ));
              // Get.off(()=>SortScreen());
            }, context,
                    (){
                  // dashBoardController.tabIndex.value=1;
                  // Navigator.of(context,rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context) => DashboardScreen()));
                }
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 6),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: image.length,
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => AddCartScreen());
                      },
                      child: Container(
                        height: 110,
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,
                        child: Slidable(
                          key: const ValueKey(0),
                          endActionPane: ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              SlidableAction(
                                // An action can be bigger than the others.
                                onPressed: (data) {
                                  Get.to(()=>AddCartScreen());
                                },
                                backgroundColor: green,
                                foregroundColor: Colors.white,
                                icon: Icons.shopping_cart_outlined,
                              ),
                              SlidableAction(
                                onPressed: (data) {},
                                backgroundColor: red,
                                foregroundColor: Colors.white,
                                icon: CupertinoIcons.delete,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 105,
                                width: 105,
                                padding: EdgeInsets.zero,
                                margin: EdgeInsets.zero,
                                child: Image.asset(image[index]["image"]),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(add_cart_background),
                                        fit: BoxFit.fill)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pullover",
                                      style: TextStyle(
                                          color: blackLight,
                                          fontFamily: "SegoeSemiBold",
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "Mango",
                                      style: TextStyle(
                                          color: grayDark,
                                          fontFamily: "SegoeRegular",
                                          fontSize: 12),
                                    ),
                                    Row(
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 12,
                                          unratedColor: grayDark,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, index) =>
                                              SvgPicture.asset(star_fill),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        Text(
                                          "(3)",
                                          style: TextStyle(
                                              color: grayDark,
                                              fontFamily: "SegoeRegular",
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "USD 295",
                                      style: TextStyle(
                                        color: appColor,
                                        fontSize: 14,
                                        fontFamily: "SegoeRegular",
                                      ),
                                    ),
                                  ])
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: grayLight.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 5)
                            ]),
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
          )
        ],
      ),
    );
  }
}
