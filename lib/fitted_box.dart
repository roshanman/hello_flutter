import 'base_demo.dart';
import 'package:flutter/material.dart';

class FittedBoxDemo extends BaseDemo {
  const FittedBoxDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    // 当子组件的宽高比和父组件的宽高比不一样时，我们等比拉伸或者填充父组件，这时我们可以使用FittedBox
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: FittedBox(
              child: Container(
                height: 50,
                width: 80,
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: FittedBox(
              child: Container(
                height: 350,
                width: 280,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
