import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NavigatorPage extends StatelessWidget {
  final String title;
  final Widget child;
  final GlobalKey navigatorKey;
  NavigatorPage({this.navigatorKey, this.child, this.title});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return GetPageRoute(
          settings: settings,
          maintainState: false,
          fullscreenDialog: false,
          page: ()=>Scaffold(
            body: child,
          ),
        );
      },
    );
  }
}
