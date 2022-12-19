import 'package:flutter/cupertino.dart';

import 'base_demo.dart';
import 'package:flutter/material.dart';

class ActivityIndicatorDemo extends BaseDemo {
  const ActivityIndicatorDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CupertinoActivityIndicator(
            // this.animating = true,
            color: Colors.red,
          ),
          SizedBox(
            height: 20,
          ),
          CupertinoActivityIndicator(
            radius: 20,
          ),
        ],
      ),
    );
  }
}
