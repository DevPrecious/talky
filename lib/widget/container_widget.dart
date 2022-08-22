import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    this.iconPath,
    this.text,
  }) : super(key: key);

  final String? iconPath;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(1.0, 1.0),
            blurRadius: 1,
            spreadRadius: 1,
            color: Colors.black12,
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          if (iconPath != null)
            Image.asset(
              iconPath!,
              width: 30,
            ),
          const SizedBox(
            width: 30,
          ),
          Text(
            text ?? 'Sign in with Google',
            style: const TextStyle(
              color: Color(0xFF243443),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
