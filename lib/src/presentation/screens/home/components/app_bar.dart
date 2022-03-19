import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';

AppBar buildAppBar({bool isTabBar = false}) {
  return AppBar(
    title: const Text(kAppBarTitle),
    bottom: isTabBar ? TabBar(
      tabs: List.generate(drawerTitles.length, (index) => Tab(
        child: Text(drawerTitles[index],style: const TextStyle(color: Colors.white),),
      ))
    ) : null,
  );
}