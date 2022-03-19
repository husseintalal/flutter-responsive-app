import 'src/config/routes/app_routes.dart';
import 'src/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'src/config/themes/app_themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kMaterialAppTitle,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.myTheme,
      initialRoute: '/',
      onGenerateRoute: AppRoutes.routeGenerator,
    );
  }
}
