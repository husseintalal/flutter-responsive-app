import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';

class CardDetailLarge extends StatelessWidget {
  const CardDetailLarge({Key? key,required this.selectedIndex}) : super(key: key);
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 6.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        child: Row(
          children: [
            Expanded(
             child:Image.asset(
               dummyData[selectedIndex]['image'].toString(),
               height: 300,
               fit: BoxFit.fitHeight,
             ),
            ),
            Expanded(
              child: Text(
                dummyData[selectedIndex]['description'].toString(),
                style: const TextStyle(fontSize: 18.0),
              )
            ),
          ],
        ),
      ),
    );
  }
}
