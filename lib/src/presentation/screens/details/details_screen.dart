import 'package:flutter/material.dart';
import '../../../core/utils/constants.dart';
import 'components/card_detail.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ModalRoute.of(context)!.settings.arguments == null ? 0 : ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text(dummyData[selectedIndex]['title'].toString()),
      ),
      body: CardDetail(selectedIndex: selectedIndex,)
    );
  }
}
