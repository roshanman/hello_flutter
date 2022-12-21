import 'base_demo.dart';
import 'package:flutter/material.dart';

class FractionallySizeBoxDemo extends BaseDemo {
  const FractionallySizeBoxDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // FractionallySizedBox 按比例调整父级约束
          FractionallySizedBox(
            widthFactor: 0.5,
            // heightFactor: 1.3,
            child: Container(
              // width: 300,
              height: 300,
              color: Colors.red,
            ),
          ).debugLayoutConstraints(),
          const SizedBox(height: 20),
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.amber,
              ),
            ),
          )
        ],
      ),
    );
  }
}
