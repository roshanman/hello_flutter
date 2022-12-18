import 'base_demo.dart';
import 'package:flutter/material.dart';

class OpacityDemo extends BaseDemo {
  const OpacityDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            // this.alwaysIncludeSemantics = false,
            opacity: 0.5,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          const Divider(),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}
