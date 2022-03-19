import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/home_drawer.dart';
import '../components/languages_grid.dart';

class SmallLayout extends StatelessWidget {
  const SmallLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        drawer: const HomeDrawer(),
        body: const LanguagesGrid()
      ),
    );
  }
}
