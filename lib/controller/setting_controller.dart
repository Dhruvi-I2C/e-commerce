import 'package:get/get.dart';

class SettingController extends GetxController{
  RxBool switchValue = false.obs;
  void toggle() => switchValue.value = switchValue.value ? false : true;
}