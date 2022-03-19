import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({Key? key, required this.title, required this.subtitle, required this.image, required this.press}) : super(key: key);
  final String title,subtitle,image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 6.0,
      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      child: InkWell(
        onTap: press,
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12.0)),
          child: GridTile(
              footer: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text(title),
                subtitle: Text(subtitle),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
          ),
        ),
      ),
    );
  }
}
