import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterController extends GetxController{
  Rx<RangeValues> currentRangeValues =  RangeValues(40, 80).obs;

  RxString startLabel = "MIN".obs;
  RxString endLabel = "MAX".obs;

  var tags = [].obs;

  var tag = 1.obs;
}