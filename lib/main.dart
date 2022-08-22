import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talky/screens/first_page.dart';
import 'package:talky/screens/spalsh_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      home: FirstPage(),
    );
  }
}
