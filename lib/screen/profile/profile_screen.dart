import 'package:e_commerce_app/screen/Home/filter/filter_screen.dart';
import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/profile/myOrder/my_order_screen.dart';
import 'package:e_commerce_app/screen/profile/payment/payment_screen.dart';
import 'package:e_commerce_app/screen/profile/settings/setting_screen.dart';
import 'package:e_commerce_app/screen/profile/shippingAddress/shipping_address.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  List<Map> list = [
    {"title":"My orders","subtitle":"Already have 12 orders","onTap":MyOrderScreen()},
    {"title":"Shipping addresses","subtitle":"3 addresses","onTap":ShippingAddress()},
    {"title":"Payment methods","subtitle":"Visa  **34","onTap":PaymentScreen()},
    {"title":"Settings","subtitle":"Notifications, password","onTap":Settings()},
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
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 38,
                    backgroundColor: lightBlue,
                    backgroundImage: AssetImage(profile_pic),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Matilda Brown",
                        style: TextStyle(
                            fontSize: 20,
                            color: blackLight,
                            fontFamily: "SegoeSemiBold"),
                      ),
                      Text(
                        "matildabrown@mail.com",
                        style: TextStyle(
                            fontSize: 16,
                            color: blackLight,
                            fontFamily: "SegoeRegular"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 6),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:10),
                          child: ListTile(
                            title: Text(
                              list[index]["title"],
                              style: TextStyle(
                                  fontSize: 18,
                                  color: blackLight,
                                  fontFamily: "SegoeSemiBold"),
                            ),
                            onTap: (){

                              if(list[0]["onTap"]==list[index]["onTap"]){
                                print(list[0]["onTap"]);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => list[0]["onTap"],));
                              }
                              else{
                                Get.to(list[index]["onTap"]);
                              }
                              //
                              // Get.to(()=>list[index]["onTap"]);

                              // Navigator.push(context, MaterialPageRoute(builder: (context) => list[index]["onTap"],));
                            },
                            subtitle:Text(
                              list[index]["subtitle"],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: grayDark,
                                  fontFamily: "SegoeSemiBold"),
                            ),
                            trailing: Icon(Icons.arrow_forward_ios,color: grayDark,size: 18,),
                          ),
                        ),
                        index==3?Container():Divider(
                          color: grayBlue,
                          thickness: 0.5,
                        )
                      ],
                    ),
                  )
                ],
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
