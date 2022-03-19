import 'package:flutter/material.dart';

import 'card_detail_large.dart';
import 'card_detail_small.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({Key? key,required this.selectedIndex}) : super(key: key);
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_,constraints){
        return constraints.maxWidth >= 600 ? CardDetailLarge(selectedIndex: selectedIndex)
            : CardDetailSmall(selectedIndex: selectedIndex);
      },
    );
  }
}
