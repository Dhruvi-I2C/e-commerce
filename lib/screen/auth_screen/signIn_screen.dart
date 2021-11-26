import 'package:e_commerce_app/controller/signIn_controller.dart';
import 'package:e_commerce_app/screen/auth_screen/signUp_screen.dart';
import 'package:e_commerce_app/screen/auth_screen/verify_identity_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/common_widgets.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  SignInController signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            color: lightBlue,
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height / 5.09),
            child: Container(
              height: Get.height / 1.23,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(top: Get.height / 10),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Let’s Sign You In",
                          style: TextStyle(
                              color: textColorBlack,
                              fontFamily: "SegoeRegular",
                              fontSize: 28),
                        ),
                        Text(
                          "Welcome back, you’ve been missed!",
                          style: TextStyle(
                              color: gray,
                              fontFamily: "SegoeRegular",
                              fontSize: 17),
                        ),
                        SizedBox(height: Get.height/24.606,),
                        Padding(
                          padding: EdgeInsets.only(right: Get.width/2.18),
                          child: Text(
                            "Phone Number",
                            style: TextStyle(
                                color: grayLight,
                                fontFamily: "SegoeRegular",
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(height: Get.height/73.82,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: Get.width/7.85),
                          child: Container(
                            height: Get.height/16.404,
                            child: textField(
                                hintText: "Enter Phone",
                                type: TextInputType.phone,
                                preFixImage: phoneIcon,
                                suffixImage: suffixIcon),
                          ),
                        ),
                        SizedBox(height: Get.height/41.01,),
                        Padding(
                          padding: EdgeInsets.only(right: 230),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                color: grayLight,
                                fontFamily: "SegoeRegular",
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(height: Get.height/73.82,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Container(
                            height: Get.height/16.404,
                            child: TextField(
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: textColorBlack,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                  color: textColorBlack,
                                  fontFamily: "SegoeRegular",
                                  fontSize: 16),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: Get.height/73.82, horizontal: Get.width/39.27),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SvgPicture.asset(lock),
                                ),
                                hintText: "Enter Password",
                                hintStyle: TextStyle(
                                    color: gray,
                                    fontFamily: "SegoeRegular",
                                    fontSize: 16),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: whiteLight)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: whiteLight)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: whiteLight)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(color: whiteLight)),
                                fillColor: whiteLight,
                                filled: true,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: Get.width/11.22),
                            Obx(()=>
                              Checkbox(
                                side: BorderSide(
                                  color: yellow,
                                  width: 2
                                ),
                                    focusColor: yellow,
                                    activeColor: yellow,
                                    value: signInController.checkBool.value,
                                    onChanged: (val) {
                                      signInController.checkBool.value = !signInController.checkBool.value;
                                    }),

                            ),
                            Text(
                              "Remember me",
                              style: TextStyle(
                                  color: gray,
                                  fontFamily: "SegoeRegular",
                                  fontSize: 14),
                            ),
                            SizedBox(
                              width: Get.width/6.55,
                            ),
                            Text(
                              "Forgot password?",
                              style: TextStyle(
                                  color: gray,
                                  fontFamily: "SegoeRegular",
                                  fontSize: 14),
                            ),


                          ],
                        ),
                        SizedBox(height:Get.height/29.53),
                        Text(
                          "Or sign in with social account?",
                          style: TextStyle(
                              color:blackLight,
                              fontFamily: "MetroPolisMedium",
                              fontSize: 15),
                        ),
                        SizedBox(height:Get.height/61.52),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: Get.height/18,
                                width: Get.width/6.55,
                                decoration: BoxDecoration(
                                  color: whiteLight,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: white.withOpacity(0.5)
                                    )
                                  ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(google_logo,),
                                )
                            ),
                            SizedBox(width: Get.width/5.61,),
                            Container(
                                height: Get.height/18,
                                width: Get.width/6.55,
                                decoration: BoxDecoration(
                                    color: whiteLight,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: white.withOpacity(0.5)
                                      )
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(facebook_logo),
                                )
                            ),
                          ],
                        ),
                        SizedBox(height: Get.height/36.91),
                        MaterialButton(
                          height: Get.height/14.76,
                          minWidth: Get.width/1.31,
                          onPressed: (){
                           print("Sign IN");
                           Get.to(VerifyIdentity());
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          color: appColor,
                          child: Text("SIGN IN",style: TextStyle(color: white,fontFamily: "SegoeBold",fontSize: 16),),
                        ),
                        SizedBox(height: Get.height/73.82,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an Account?",
                              style: TextStyle(
                                  color: gray,
                                  fontFamily: "SegoeRegular",
                                  fontSize: 17),
                            ),
                            InkWell(
                              onTap: (){
                                Get.to(SignUpScreen());
                              },
                                child: Text(" SIGN UP",style: TextStyle(color: appColor,fontFamily: "SegoeBold",fontSize: 16),)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
            ),
          ),
          Positioned(
            top: Get.height / 7.38,
            left: Get.width / 2.7,
            child: SvgPicture.asset(
              profileDefault,
              width: Get.width/3.27,
              height: Get.height/6.15,
            ),
          )
        ],
      ),
    );
  }
}
