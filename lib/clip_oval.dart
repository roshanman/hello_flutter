import 'base_demo.dart';
import 'package:flutter/material.dart';

class ClipOvalDemo extends BaseDemo {
  const ClipOvalDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            // this.clipper,
            // this.clipBehavior = Clip.antiAlias,
            child: Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
          ),
          const Divider(),
          ClipOval(
            child: Container(
              color: Colors.red,
              width: 200,
              height: 300,
            ),
          ),
        ],
      ),
    );
  }
}
