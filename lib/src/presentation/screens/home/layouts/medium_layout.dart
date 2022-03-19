import 'package:flutter/material.dart';
import '../components/home_drawer.dart';
import '../components/languages_grid.dart';

class MediumLayout extends StatelessWidget {
  const MediumLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: const [
             Expanded(
              flex: 3,
              child: HomeDrawer(),
            ),
             Expanded(
               flex: 5,
               child: LanguagesGrid(numOfColumns: 3,),
            )
          ],
        ),
      ),
    );
  }
}
