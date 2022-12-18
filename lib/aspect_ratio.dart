import 'base_demo.dart';
import 'package:flutter/material.dart';

class AspectRatioDemo extends BaseDemo {
  const AspectRatioDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    // AspectrRation会将父级传递给的约束按aspectRatio调整成一个紧约束然后传递给下级
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          print("object1 is $constraints");
          return AspectRatio(
            aspectRatio: 2.0 / 1.0,
            child: LayoutBuilder(
              builder: (context, constraints) {
                print("object2 is $constraints");
                return Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
