import 'package:hello_flutter/main.dart';

import 'base_demo.dart';
import 'package:flutter/material.dart';

class InkWellDemo extends BaseDemo {
  const InkWellDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: const Text('这是InkWell点击效果'),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {},
            splashColor: Colors.red,
            child: const Text('这是InkWell点击效果'),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {},
            highlightColor: Colors.blue,
            splashColor: Colors.red,
            child: const Text('这是InkWell点击效果'),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: const Text('这是InkWell点击效果'),
            ),
          ),
          const SizedBox(height: 10),
          Ink(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFDE2F21), Color(0xFFEC592F)],
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child: const Text(
                  '这是InkWell的点击效果',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
