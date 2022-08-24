import 'package:flutter/material.dart';
import 'package:print_wishes/register.dart';
import 'package:print_wishes/splashScreen.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'splashScreen': (context) => SplashScreen(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}
