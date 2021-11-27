import 'package:e_commerce_app/screen/profile/shippingAddress/add_address_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            child: appbar("Shipping Address",
                "Your Item Will be Deliver on below address"),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 2,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          height: 155,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Priscekila",
                                        style: TextStyle(
                                            color: blackLight,
                                            fontFamily: "SegoeSemiBold",
                                            fontSize: 20),
                                      ),
                                      Text(
                                        "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                                        style: TextStyle(
                                            color: blackLight,
                                            fontFamily: "SegoeRegular",
                                            fontSize: 14),
                                        maxLines: 2,
                                      ),
                                      Text(
                                        "+99 1234567890",
                                        style: TextStyle(
                                            color: blackLight,
                                            fontFamily: "SegoeRegular",
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding:  EdgeInsets.only(top: 10.0),
                                      child: InkWell(
                                        onTap: (){},
                                        child: Icon(
                                          Icons.more_vert,
                                          color: grayDark,
                                        ),
                                      ),
                                    ))
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
                    SizedBox(height: Get.height/6.15,),
                    MaterialButton(
                      height: Get.height/14.76,
                      minWidth: Get.width/1.31,
                      onPressed: (){
                        print("Add Address");
                        Get.to(()=>AddAddress());
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      color: appColor,
                      child: Text("Add Address",style: TextStyle(color: white,fontFamily: "SegoeBold",fontSize: 16),),
                    ),
                  ],
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