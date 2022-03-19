import 'package:flutter/material.dart';

///! This file is used to initialize app level & device level information
///! That will help us to build a responsive app that work with various screen sizes

enum ResponsiveLayout {small,medium,large}

class ResponsiveSize{
  late final MediaQueryData _mediaQuery;
  late final double _screenWidth;
  late final double _screenHeight;
  late final Orientation _deviceOrientation;

  // ! breakpoints will help us to switch layout when screen width crosses a breakpoint
  final double _breakPoint1 = 600.0;
  final double _breakPoint2 = 840.0;

  //! GETTERS FOR OUR width,height,orientation private variables
  double get screenWidth => _screenWidth;
  double get screenHeight => _screenHeight;
  Orientation get deviceOrientation => _deviceOrientation;


  void init(BuildContext context){
    _mediaQuery = MediaQuery.of(context);
    _screenWidth = _mediaQuery.size.width;
    _screenHeight = _mediaQuery.size.height;
    _deviceOrientation = _mediaQuery.orientation;
  }

   ResponsiveLayout get responsiveLayout{
    if(_screenWidth < _breakPoint1){
      return ResponsiveLayout.small;
    }else if(_screenWidth >= _breakPoint1 && _screenWidth <= _breakPoint2){
      return ResponsiveLayout.medium;
    }else {
      return ResponsiveLayout.large;
    }
  }


}