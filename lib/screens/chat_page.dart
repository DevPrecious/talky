// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:talky/widget/chat_app_widget.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ChatAppBar(),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: Color(0xFFF7F7F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 2,
                              spreadRadius: 2,
                              color: Colors.black12,
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            'Chat',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 17.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Container(
                        child: const Text(
                          'Call',
                          style:
                              TextStyle(color: Colors.black12, fontSize: 17.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
