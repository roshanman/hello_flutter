import 'base_demo.dart';
import 'package:flutter/material.dart';

class SizedBoxDemo extends BaseDemo {
  const SizedBoxDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ).debugLayoutConstraints(),
          ),
          const SizedBox(height: 20),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
