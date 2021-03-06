import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderController extends GetxController with SingleGetTickerProviderMixin{
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'All'),
    Tab(text: 'Comming'),
    Tab(text: 'Received'),
  ];

  TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}