import 'package:chips_choice/chips_choice.dart';
import 'package:e_commerce_app/controller/filter_controller.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterScreen extends StatelessWidget {
  FilterController filterController = Get.put(FilterController());

  List<String> options = [
    'New',
    'Used',
    'Not Specified',
  ];

  List<String> options2 = ['US Only', 'North America', 'Europe', 'Asia'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            child: appbar("Filters", "Filter your data as you need",context),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Get.height/29.53,
                    ),
                    Text(
                      "Price Range",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "SegoeSemiBold",
                          color: blackLight),
                    ),
                    SizedBox(
                      height: Get.height/49.21,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Get.height/14.76,
                          width: Get.width/2.18,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "\$1.245",
                              style: TextStyle(
                                  color: NeutralGrey,
                                  fontFamily: "SegoeBold",
                                  fontSize: 13),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: grayBlue, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          height:Get.height/14.76,
                          width: Get.width/2.18,
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              "\$9.344",
                              style: TextStyle(
                                  color: NeutralGrey,
                                  fontFamily: "SegoeBold",
                                  fontSize: 13),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: grayBlue, width: 1),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height/36.91,
                    ),
                    Obx(
                      () => RangeSlider(
                        inactiveColor: grayBlue,
                        activeColor: appColor,
                        values: filterController.currentRangeValues.value,
                        min: 0,
                        max: 100,
                        labels: RangeLabels(filterController.startLabel.value,
                            filterController.endLabel.value),
                        onChanged: (values) {
                          filterController.startLabel.value =
                              values.start.toString();
                          filterController.endLabel.value =
                              values.end.toString();
                          filterController.currentRangeValues.value = values;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MIN",
                            style: TextStyle(
                                color: NeutralGrey,
                                fontFamily: "SegoeBold",
                                fontSize: 13),
                          ),
                          Text(
                            "MAX",
                            style: TextStyle(
                                color: NeutralGrey,
                                fontFamily: "SegoeBold",
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: Get.height/36.91,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Condition",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "SegoeSemiBold",
                            color: blackLight),
                      ),
                    ),
                    SizedBox(
                      height: Get.height/73.82,
                    ),
                    Obx(
                      () => ChipsChoice.multiple(
                        value: filterController.tags.value,
                        choiceStyle: C2ChoiceStyle(
                          margin: EdgeInsets.all(5),
                          color: white,
                          borderColor: grayBlue,
                          borderRadius: BorderRadius.circular(7),
                          showCheckmark: false,
                          brightness: Brightness.dark,
                          labelPadding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 25, right: 25),
                          labelStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: "SegoeRegular",
                              color: NeutralGrey),
                        ),
                        choiceActiveStyle: C2ChoiceStyle(
                          margin: EdgeInsets.all(5),
                          color: grayBlue,
                          borderColor: grayBlue,
                          borderRadius: BorderRadius.circular(7),
                          showCheckmark: false,
                          brightness: Brightness.dark,
                          labelPadding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 25, right: 25),
                          labelStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: "SegoeBold",
                              color: appColor),
                        ),
                        onChanged: (val) {
                          filterController.tags.value = val;
                        },
                        choiceItems: C2Choice.listFrom<String, String>(
                          source: options,
                          value: (i, v) => v,
                          label: (i, v) => v,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height/36.91,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Item Location",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "SegoeSemiBold",
                            color: blackLight),
                      ),
                    ),
                    Obx(
                      () => ChipsChoice.single(
                        wrapped: true,
                        onChanged: (int val){
                          filterController.tag.value = val;
                        },
                        value: filterController.tag.value,
                        choiceItems: C2Choice.listFrom<int, String>(
                          source: options2,
                          value: (i, v) => i,
                          label: (i, v) => v,
                        ),
                        choiceStyle: C2ChoiceStyle(
                          margin: EdgeInsets.all(5),
                          color: white,
                          borderColor: grayBlue,
                          borderRadius: BorderRadius.circular(7),
                          showCheckmark: false,
                          brightness: Brightness.dark,
                          labelPadding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 15, right: 15),
                          labelStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: "SegoeRegular",
                              color: NeutralGrey),
                        ),
                        choiceActiveStyle: C2ChoiceStyle(
                          margin: EdgeInsets.all(5),
                          color: grayBlue,
                          borderColor: grayBlue,
                          borderRadius: BorderRadius.circular(7),
                          showCheckmark: false,
                          brightness: Brightness.dark,
                          labelPadding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 15, right: 15),
                          labelStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: "SegoeBold",
                              color: appColor),
                        ),
                      ),
                    )
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
