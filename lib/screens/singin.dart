import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talky/screens/chat_page.dart';
import 'package:talky/widget/custom_app_bar.dart';
import 'package:talky/widget/custom_button.dart';
import 'package:talky/widget/custom_input_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var boolShowPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  'assets/images/Talkyblack.png',
                  width: 156,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Sign in with Google',
                  style: TextStyle(
                    color: Color(0xFF243443),
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                    wordSpacing: 3.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomInputWidget(
                hintText: 'Enter your gmail address',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomInputWidget(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      boolShowPassword = !boolShowPassword;
                    });
                  },
                  child: boolShowPassword
                      ? const Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                ),
                hintText: 'Enter your password',
                isObscured: boolShowPassword,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFF243443),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const Spacer(),
              CustomButton(
                text: 'Sign in',
                pressed: () {
                  Get.to(() => const ChatPage());
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: const [
                  Center(
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFF243443),
                      ),
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
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
