import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talky/screens/singin.dart';
import 'package:talky/widget/container_widget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final data = [
    ['Sign in with Google', 'assets/icons/iconGoogle.png'],
    ['Sign in with Facebook', 'assets/icons/Facebook.png'],
    ['Sign in with Apple', 'assets/icons/Apple.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Talkyblack.png',
              width: 176,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () => Get.to(() => const SignIn()),
                        child: ContainerWidget(
                          iconPath: data[index][1],
                          text: data[index][0],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(
                      color: Color(0xFF58616A),
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'or',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xFF58616A),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ContainerWidget(
                text: 'Continue with phone number',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: const [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF243443),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Sign up here',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF377DFF),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
