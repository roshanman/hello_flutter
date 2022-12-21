import 'base_demo.dart';
import 'package:flutter/material.dart';

class LimitedBoxDemo extends BaseDemo {
  const LimitedBoxDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LimitedBox(
            // LimitedBox会将unbound的边界长度控制到maxHeight、maxWidth以内
            maxHeight: 50,
            maxWidth: 300,
            child: Container(
              color: Colors.amber,
              width: 100,
              height: 100,
            ),
          ).debugLayoutConstraints(),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.amber,
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}
