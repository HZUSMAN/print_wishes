import 'dart:async';

import 'package:flutter/material.dart';

import 'Login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/splash1.png'), fit: BoxFit.cover)),
    );
  }

  Future<Timer> changeScreen() async {
    return Timer(const Duration(seconds: 2), onChangeScreen);
  }

  onChangeScreen() async {
    getData().then((value) => {
          if (value == null)
            {
              debugPrint("Tag data is not available here"),
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyLogin()))
            }
          else
            {
              // debugPrint("Tag data is available here:$value"),
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => const HomeScreen()))
            }
        });
  }

  getData() {}
}
