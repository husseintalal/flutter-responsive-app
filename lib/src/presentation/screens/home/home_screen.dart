import 'package:flutter/material.dart';
import '../../../core/utils/responsive_size.dart';
import 'layouts/large_layout.dart';
import 'layouts/medium_layout.dart';
import 'layouts/small_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! initialize our responsive_size
    //! use cascade operator to make sequence of operations on the object
    final responsiveSize = ResponsiveSize()..init(context);
    switch(responsiveSize.responsiveLayout){
      case ResponsiveLayout.small: return const SmallLayout();
      case ResponsiveLayout.medium: return const MediumLayout();
      case ResponsiveLayout.large: return const LargeLayout();
    }
  }

}

