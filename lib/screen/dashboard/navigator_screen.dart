import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NavigatorPage extends StatelessWidget {
  String title;
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


// class NavigatorPage extends StatefulWidget {
//
//
//   String title;
//   final Widget child;
//   final GlobalKey navigatorKey;
//
//   @override
//   _NavigatorPageState createState() => _NavigatorPageState();
// }
//
// class _NavigatorPageState extends State<NavigatorPage> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Navigator(
//       key: widget.navigatorKey,
//       onGenerateRoute: (RouteSettings settings) {
//         // print("NAME : ${settings.name}");
//         return MaterialPageRoute(
//           settings: settings,
//           maintainState: false,
//           fullscreenDialog: false,
//           builder: (BuildContext context) {
//             return Scaffold(
//               // appBar: appBar(settings.name),
//               body: widget.child,
//             );
//           },
//         );
//       },
//     );
//   }
// }
