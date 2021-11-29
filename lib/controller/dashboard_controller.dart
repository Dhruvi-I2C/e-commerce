
import 'package:e_commerce_app/screen/Home/home_screen.dart';
import 'package:e_commerce_app/screen/cart/cart_screen.dart';
import 'package:e_commerce_app/screen/favourite/favourite_screen.dart';
import 'package:e_commerce_app/screen/profile/profile_screen.dart';
import 'package:e_commerce_app/screen/utills/colors.dart';
import 'package:e_commerce_app/screen/utills/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController{

  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    // this.navigatorKeys = {
    //   0: GlobalKey(),
    //   1: GlobalKey(),
    //   2: GlobalKey(),
    //   3: GlobalKey()
    // }.obs;
    tabIndex.value = index;
  }

  var navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
    3: GlobalKey()
  }.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
 /* int currentIndex = 0;
  List<BottomNavigationElement> items = [];

  Widget navigationTab({GlobalKey<NavigatorState> naviKey, Widget widget}) {
    return Navigator(
      key: naviKey,
      onGenerateRoute: (routeSettings) {
        return GetPageRoute(page: () => widget);
      },
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.white.withOpacity(0.5),
      backgroundColor: lightBlue,
      currentIndex: currentIndex,
      selectedItemColor: Colors.white,
      onTap: (int index) => _selectTab(index),
      items: items.map((e) => e.bottomBarItem).toList(),
    );
  }

  void _selectTab(int index) {
    if (index == currentIndex) {
      items[index]
          .navigationKey
          .currentState
          .popUntil((route) => route.isFirst);
    } else {
      currentIndex = index;
    }
    update();
  }

  Future<bool> onWillPop() async {
    final isFirstRouteInCurrentTab =
    !await items[currentIndex].navigationKey.currentState.maybePop();
    if (isFirstRouteInCurrentTab) {
      if (currentIndex != 0) {
        // _selectTab(1);
        return false;
      }
    }
    return isFirstRouteInCurrentTab;
  }

  @override
  void onInit() {
    super.onInit();
    items = [
      //Каталог
      BottomNavigationElement(
        bottomBarItem: BottomNavigationBarItem(
          icon: SvgPicture.asset(home_icon),
          backgroundColor:lightBlue ,
          activeIcon: Container(
            height: 45,
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(home_icon,color: appColor,),
                SizedBox(width: 10),
                Text("Home",style: TextStyle(fontSize: 14,fontFamily: "SegoeRegular",fontWeight: FontWeight.w600,color: appColor),)
              ],
            ),
            decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.25),
                      blurRadius: 4
                  )
                ],
                borderRadius: BorderRadius.circular(30)),
          ),
          label: 'Home',
          // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
        ),
        bottomBarView: HomeScreen(),
        navigationKey: Get.nestedKey('0'),
      ),
      //Любимое
      BottomNavigationElement(
        bottomBarItem: BottomNavigationBarItem(
          icon: SvgPicture.asset(favourite_icon),
          backgroundColor: lightBlue,
          label: 'Like',
          activeIcon: Container(
            height: 45,
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(favourite_icon,color: appColor,),
                SizedBox(width: 10),
                Text("Like",style: TextStyle(fontSize: 14,fontFamily: "SegoeRegular",fontWeight: FontWeight.w600,color: appColor),)
              ],
            ),
            decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.25),
                      blurRadius: 4
                  )
                ],
                borderRadius: BorderRadius.circular(30)),
          ),
          // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
        ),
        bottomBarView: FavouriteScreen(),
        navigationKey: Get.nestedKey('1'),
      ),
      //Корзина
      BottomNavigationElement(
        bottomBarItem: BottomNavigationBarItem(
          icon: SvgPicture.asset(cart_icon),
          label: 'Cart',
          backgroundColor: lightBlue,
          activeIcon: Container(
            height: 45,
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(cart_icon,color: appColor,),
                SizedBox(width: 10),
                Text("Cart",style: TextStyle(fontSize: 14,fontFamily: "SegoeRegular",fontWeight: FontWeight.w600,color: appColor),)
              ],
            ),
            decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.25),
                      blurRadius: 4
                  )
                ],
                borderRadius: BorderRadius.circular(30)),
          ),

        ),
        bottomBarView: CartScreen(),
        navigationKey: Get.nestedKey('2'),
      ),
      //Заказы
      BottomNavigationElement(
        bottomBarItem: BottomNavigationBarItem(
          icon: SvgPicture.asset(account_icon),
          backgroundColor: lightBlue,
          label: 'Profile',
          activeIcon: Container(
            height: 45,
            width: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(account_icon,color: appColor,),
                SizedBox(width: 10),
                Text("Profile",style: TextStyle(fontSize: 14,fontFamily: "SegoeRegular",fontWeight: FontWeight.w600,color: appColor),)
              ],
            ),
            decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.25),
                      blurRadius: 4
                  )
                ],
                borderRadius: BorderRadius.circular(30)),
          ),
          // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
        ),
        bottomBarView: ProfileScreen(),
        navigationKey: Get.nestedKey('3'),
      ),
    ];
  }
}

class BottomNavigationElement {
  Widget bottomBarView;
  BottomNavigationBarItem bottomBarItem;
  GlobalKey<NavigatorState> navigationKey;
  BottomNavigationElement({
    @required this.bottomBarView,
    @required this.bottomBarItem,
    @required GlobalKey<NavigatorState> navigationKey,
  });*/
}


