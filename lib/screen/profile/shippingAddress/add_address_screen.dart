import 'package:e_commerce_app/controller/add_address_controller.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAddress extends StatelessWidget {
  AddAddressController addressController = Get.put(AddAddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
            margin: EdgeInsets.only(top: 18),
            child: appbar("Add new Address", "Please enter your new address",context),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Country or region",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        Form(
                            child: Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: FormField<String>(
                              builder: (FormFieldState<String> state) {
                                return InputDecorator(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(12, 10, 20, 20),
                                    // labelText: "hi",
                                    // labelStyle: textStyle,
                                    // labelText: _dropdownValue == null
                                    //     ? 'Where are you from'
                                    //     : 'From',
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.lightBlue),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.lightBlue),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.lightBlue),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.lightBlue),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.lightBlue),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: Obx(
                                      () => DropdownButton<String>(
                                        value:
                                            addressController.selectedValue.value,
                                        items:
                                            addressController.items.map((element) {
                                          return DropdownMenuItem<String>(
                                            child: Text(element),
                                            value: element,
                                          );
                                        }).toList(),
                                        onChanged: (newValue) {
                                          addressController.setSelected(newValue);
                                        },
                                        isExpanded: true,
                                        isDense: true,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 230,
                          width: double.infinity,
                          child: ListView.builder(
                            padding: EdgeInsets.only(top: 10),
                            itemCount: addressController.items.length,
                            itemBuilder: (context, index) => Padding(
                              padding:  EdgeInsets.all(10.0),
                              child: Obx(
                                ()=> Text(
                                  addressController.items[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "SegoeRegular",
                                    color: addressController.selectedValue.value==addressController.items[index]?appColor:grayDark
                                  ),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: grayLight.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5)
                              ]),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Street Address",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(height: 10,),
                        addressTextField("Enter Street Address", TextInputType.streetAddress,false),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Street Address 2 (Optional)",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(height: 10,),
                        addressTextField("Enter Street Address2", TextInputType.streetAddress,false),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "City",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(height: 10,),
                        addressTextField("Enter City", TextInputType.name,false),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "State/Province/Region",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(height: 10,),
                        addressTextField("Enter State", TextInputType.name,false),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Zip Code",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(height: 10,),
                        addressTextField("Enter Zip Code", TextInputType.number,false),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Phone Number",
                          style: TextStyle(
                            color: NeutralDark,
                            fontSize: 17,
                            fontFamily: "SegoeSemiBold",
                          ),
                        ),
                        SizedBox(height: 10,),
                        addressTextField("Enter Phone Number", TextInputType.phone,false),
                        SizedBox(
                          height: 60,
                        ),
                        Center(
                          child: MaterialButton(
                            height: Get.height/14.76,
                            minWidth: Get.width/1.31,
                            onPressed: (){
                              print("Add Address");
                              Get.back();
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                            ),
                            color: appColor,
                            child: Text("Add Address",style: TextStyle(color: white,fontFamily: "SegoeBold",fontSize: 16),),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
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
          ),
        ],
      ),
    );
  }
}
