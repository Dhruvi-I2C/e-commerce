import 'package:e_commerce_app/controller/sort_controller.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SortScreen extends StatelessWidget {
  SortController sortController = Get.put(SortController());

   List<String> text = [
     "Time: ending soonest",
     "Time: newly listed",
     "Price + Shipping: lowest first",
     "Price + Shipping: highest first",
     "Distance: nearest first",
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
            child: appbar("Sort", "Extract you required Product",context),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      SizedBox(
                        height: 30,
                      ),
                     Padding(
                       padding:  EdgeInsets.only(left: 15.0,bottom: 5),
                       child: Text("Best Match",style: TextStyle(color: appColor,fontSize: 18,fontFamily: "SegoeBold"),),
                     ),
                     ListView.builder(
                       padding: EdgeInsets.zero,
                       itemCount: 5,
                         shrinkWrap: true,
                         physics: NeverScrollableScrollPhysics(),
                         itemBuilder: (context, index) => Padding(
                           padding:  EdgeInsets.only(bottom: 8.0),
                           child:
                              Obx(()=>
                                 InkWell(
                                  onTap: (){
                                    sortController.onTapList[index]= !sortController.onTapList[index];
                                  },
                                 child: Container(
                                   height: 60,
                                   width: double.infinity,
                                   color: sortController.onTapList[index]==false? white:whiteShade,
                                   alignment: Alignment.centerLeft,
                                   child: Padding(
                                     padding:  EdgeInsets.only(left: 15.0),
                                     child: Text(
                                         text[index],
                                       style: TextStyle(
                                         fontFamily: "SegoeRegular",
                                         fontSize: 16,
                                         color: sortController.onTapList[index]==false? blackShade:NeutralGrey,
                                       ),
                                     ),
                                   ),
                                 ),
                             ),
                              ),
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
