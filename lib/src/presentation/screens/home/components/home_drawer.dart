import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
              Image.asset('assets/images/cover_image.png'),
              ...List.generate(drawerTitles.length, (index) => ListTile(
                leading: const Icon(Icons.push_pin_rounded,color: Colors.red,),
                title: Text(drawerTitles[index],style: const TextStyle(fontWeight: FontWeight.bold),),
              ))
          ],
        ),
      ),
    );
  }
}
