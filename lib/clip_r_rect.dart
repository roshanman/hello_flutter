import 'base_demo.dart';
import 'package:flutter/material.dart';

class ClipRRectDemo extends BaseDemo {
  const ClipRRectDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: ClipRRect(
        // this.clipper,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.red,
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
