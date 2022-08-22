import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFE5F1FF),
              ),
              child: Center(
                child: Image.asset(
                  'assets/icons/arrow_back.png',
                  width: 14,
                ),
              ),
            ),
          ),
          const Text(
            'Back',
            style: TextStyle(
              color: Color(0xFF377DFF),
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
        ],
      ),
    );
  }
}
