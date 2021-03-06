import 'package:e_commerce_app/controller/dashboard_controller.dart';
import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/cart/cart_screen.dart';
import 'package:e_commerce_app/screen/dashboard/navigator_screen.dart';
import 'package:e_commerce_app/screen/favourite/favourite_screen.dart';
import 'package:e_commerce_app/screen/profile/profile_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
    3: GlobalKey()
  };

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => WillPopScope(
        onWillPop: () async {
          return !await Navigator.maybePop(
              navigatorKeys[landingPageController.tabIndex.value].currentState.context);
        },
      child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            backgroundColor: lightBlue,
            selectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(home_icon),
                backgroundColor: lightBlue,
                activeIcon: Container(
                  height: 45,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        home_icon,
                        color: appColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "SegoeRegular",
                            fontWeight: FontWeight.w600,
                            color: appColor),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(color: black.withOpacity(0.25), blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(30)),
                ),
                label: 'Home',
                // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(favourite_icon),
                backgroundColor: lightBlue,
                label: 'Like',
                activeIcon: Container(
                  height: 45,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        favourite_icon,
                        color: appColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Like",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "SegoeRegular",
                            fontWeight: FontWeight.w600,
                            color: appColor),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(color: black.withOpacity(0.25), blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(30)),
                ),
                // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(cart_icon),
                label: 'Cart',
                backgroundColor: lightBlue,
                activeIcon: Container(
                  height: 45,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        cart_icon,
                        color: appColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Cart",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "SegoeRegular",
                            fontWeight: FontWeight.w600,
                            color: appColor),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(color: black.withOpacity(0.25), blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(account_icon),
                backgroundColor: lightBlue,
                label: 'Profile',
                activeIcon: Container(
                  height: 45,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        account_icon,
                        color: appColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: "SegoeRegular",
                            fontWeight: FontWeight.w600,
                            color: appColor),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(color: black.withOpacity(0.25), blurRadius: 4)
                      ],
                      borderRadius: BorderRadius.circular(30)),
                ),
                // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
              ),
            ],
          ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final DashBoardController landingPageController =
        Get.put(DashBoardController(), permanent: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightBlue,
        bottomNavigationBar:
            buildBottomNavigationMenu(context, landingPageController),
        body: Obx(
          () => WillPopScope(
            onWillPop: () async {
              if (landingPageController.tabIndex.value == 0) return true;

              landingPageController.tabIndex.value = 0;

              return false;
            },
            child: IndexedStack(
              index: landingPageController.tabIndex.value,
              children: [
                NavigatorPage(
                  child: HomeScreen(),
                  navigatorKey: navigatorKeys[0],
                  title: "Home",
                ),
                NavigatorPage(
                  child: FavouriteScreen(),
                  navigatorKey: navigatorKeys[1],
                  title: "Like",
                ),
                NavigatorPage(
                  child: CartScreen(),
                  navigatorKey: navigatorKeys[2],
                  title: "Cart",
                ),
                NavigatorPage(
                  child: ProfileScreen(),
                  navigatorKey: navigatorKeys[3],
                  title: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
import 'package:e_commerce_app/controller/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.currentIndex,
          children: controller.items
              .map((e) => controller.navigationTab(
            naviKey: e.navigationKey,
            widget: e.bottomBarView,
          ))
              .toList(),
        ),
        bottomNavigationBar: controller.bottomNavigationBar(),
      );
    });
  }
}*/
