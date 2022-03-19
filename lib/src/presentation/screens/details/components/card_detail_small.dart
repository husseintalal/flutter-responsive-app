import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';

class CardDetailSmall extends StatelessWidget {
  const CardDetailSmall({Key? key,required this.selectedIndex}) : super(key: key);
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 6.0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      color: Colors.white,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset(
              dummyData[selectedIndex]['image'].toString(),
              height: 300,
              fit: BoxFit.fitHeight,
            ),
            const Divider(color: Colors.black,height: 3.0,),
            Text(
              dummyData[selectedIndex]['description'].toString(),
              style: const TextStyle(fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}
