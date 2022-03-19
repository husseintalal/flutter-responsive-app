import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';
import '../../details/components/card_detail.dart';
import '../components/app_bar.dart';


class LargeLayout extends StatelessWidget {
  const LargeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: drawerTitles.length,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(isTabBar: true),
          body: TabBarView(
            children: List.generate(dummyData.length, (index) => CardDetail(selectedIndex: index)),
          )
        ),
      ),
    );
  }
}
