// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:talky/screens/first_page.dart';
import 'package:talky/screens/image_show.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (c, s) => s.connectionState != ConnectionState.done
            ? ImageShow()
            : FirstPage());
  }
}
