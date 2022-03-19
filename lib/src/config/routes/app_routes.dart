import 'package:flutter/material.dart';
import '../../core/utils/constants.dart';
import '../../presentation/screens/details/details_screen.dart';
import '../../presentation/screens/home/home_screen.dart';

///! This file will contains all [Routes]
///! That will be using in our [main.dart]

class AppRoutes{

  static Route<dynamic>routeGenerator(RouteSettings settings){
    switch(settings.name){
      case homeScreen : return materialPageRoute(const HomeScreen(),settings);
      case detailsScreen : return materialPageRoute(const DetailsScreen(),settings);
      // ! if [route not found] return a screen with error
      default: return materialPageRoute(
          const Scaffold(
            body: Center(
              child: Text('ERROR, ROUTE NOT FOUND!'),
            ),
          ),
        settings
      );
    }
  }

  static MaterialPageRoute materialPageRoute(Widget widget,RouteSettings settings) =>
      MaterialPageRoute(builder: (_) => widget,settings: settings);
}