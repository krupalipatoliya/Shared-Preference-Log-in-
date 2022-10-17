import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registration_ui/utils/appRoutes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  final checkedBoxValue = prefs.getBool("checkedBoxValue") ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login logout",
      //home: HomePage(),
      initialRoute:
          (checkedBoxValue) ? AppRoutes().homePage : AppRoutes().loginPage,
      routes: routes,
    ),
  );
}
