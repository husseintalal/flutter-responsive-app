import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';
import 'grid_item.dart';

class LanguagesGrid extends StatelessWidget {
  const LanguagesGrid({Key? key, this.numOfColumns = 2}) : super(key: key);
  final int numOfColumns;


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: numOfColumns, //number of columns
        mainAxisSpacing: 15.0, //vertical spacing,
        crossAxisSpacing: 15.0, //horizontal spacing
        childAspectRatio: 1/1.2, //AspectRatio of each widget
      ),
      itemCount: dummyData.length,
      itemBuilder: (_,index) => GridItem(
        title: dummyData[index]['title'].toString(),
        subtitle: dummyData[index]['subtitle'].toString(),
        image: dummyData[index]['image'].toString(),
        press: () => Navigator.of(context).pushNamed(detailsScreen,arguments: index)
      )
    );
  }
}
