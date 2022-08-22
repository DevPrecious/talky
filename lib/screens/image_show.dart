import 'package:flutter/material.dart';

class ImageShow extends StatefulWidget {
  const ImageShow({Key? key}) : super(key: key);

  @override
  State<ImageShow> createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF377DFF),
      body: Center(
        child: Image.asset(
          'assets/images/Talky..png',
          width: 234,
        ),
      ),
    );
  }
}
