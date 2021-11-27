import 'package:get/get.dart';

class AddAddressController extends GetxController{
  List<String> items = [
    "United States",
    "United Kingdom",
    "Afghanistan",
    "Albania",
    "American Samoa",
  ].obs;

  var selectedValue = "United States".obs;

  void setSelected(String value){
    selectedValue.value = value;
  }
}