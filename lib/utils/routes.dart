import 'package:flutter/cupertino.dart';
import 'package:registration_ui/LoginPage.dart';
import 'package:registration_ui/homePage.dart';

import 'appRoutes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => HomePage(),
  AppRoutes().loginPage: (context) => LoginPage(),
};
