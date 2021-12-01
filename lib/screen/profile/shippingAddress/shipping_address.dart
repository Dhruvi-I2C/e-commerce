import 'package:e_commerce_app/screen/profile/shippingAddress/add_address_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddress extends StatelessWidget {
  List<Map> data = [
    {
      "text": "Priscekila",
      "subtext":
          "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
      "phone": "+99 1234567890"
    },
    {
      "text": "America",
      "subtext": "3 Newbridge Court Chino Hills, CA 91709, United States",
      "phone": "+99 1234567890"
    },
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
            child: appbar("Shipping Address",
                "Your Item Will be Deliver on below address",context),
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
                          height: Get.height / 4.76,
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
                                        data[index]["text"],
                                        style: TextStyle(
                                            color: blackLight,
                                            fontFamily: "SegoeSemiBold",
                                            fontSize: 20),
                                      ),
                                      Text(
                                        data[index]["subtext"],
                                        style: TextStyle(
                                            color: blackLight,
                                            fontFamily: "SegoeRegular",
                                            fontSize: 14),
                                        maxLines: 2,
                                      ),
                                      Text(
                                        data[index]["phone"],
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
                                  child: PopupMenuButton(
                                      icon: Icon(
                                        Icons.more_vert,
                                        color: grayDark,
                                      ),
                                      color: Color(0xffF1F3F9),
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      itemBuilder: (context) => [
                                            PopupMenuItem(
                                              padding: EdgeInsets.only(
                                                  top: 20, left: 20, right: 20),
                                              height: 20,
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.edit,
                                                    color: green,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Edit",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "SegoeRegular",
                                                        fontSize: 20,
                                                        color: black),
                                                  )
                                                ],
                                              ),
                                              value: "first",
                                            ),
                                            PopupMenuItem(
                                              height: 10,
                                              child: Divider(
                                                color: black,
                                                thickness: 0.5,
                                              ),
                                            ),
                                            PopupMenuItem(
                                              height: 20,
                                              padding: EdgeInsets.only(
                                                  bottom: 20,
                                                  left: 20,
                                                  right: 20),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    CupertinoIcons.delete,
                                                    color: red,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "Delete",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            "SegoeRegular",
                                                        fontSize: 20,
                                                        color: black),
                                                  )
                                                ],
                                              ),
                                            )
                                          ]),
                                ),
                                // Align(
                                //     alignment: Alignment.topRight,
                                //     child: Padding(
                                //       padding:  EdgeInsets.only(top: 10.0),
                                //       child: InkWell(
                                //         onTap: (){},
                                //         child: Icon(
                                //           Icons.more_vert,
                                //           color: grayDark,
                                //         ),
                                //       ),
                                //     )),
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
                    SizedBox(
                      height: Get.height / 6.15,
                    ),
                    MaterialButton(
                      height: Get.height / 14.76,
                      minWidth: Get.width / 1.31,
                      onPressed: () {
                        print("Add Address");
                        Get.to(() => AddAddress());
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: appColor,
                      child: Text(
                        "Add Address",
                        style: TextStyle(
                            color: white,
                            fontFamily: "SegoeBold",
                            fontSize: 16),
                      ),
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
