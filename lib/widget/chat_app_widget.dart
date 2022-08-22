import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/user.png',
                  width: 50,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 30,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFF2DCA8C),
                ),
              ),
            )
          ],
        ),
        const Icon(Icons.search),
      ],
    );
  }
}
