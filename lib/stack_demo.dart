import 'base_demo.dart';
import 'package:flutter/material.dart';

class StackWidgetDemo extends BaseDemo {
  const StackWidgetDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Stack(
        fit: StackFit.passthrough, // StackFit.expand
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Container(
            color: Colors.green[300],
            width: 300,
            height: 300,
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 20,
              height: 20,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: -6,
            right: -6,
            child: Container(
              width: 20,
              height: 20,
              color: Colors.red,
            ),
          ),
          Positioned(
            child: Container(
              width: 100,
              height: 20,
              color: Colors.yellow,
            ),
          ),
          Container(
            width: 50,
            height: 20,
            color: Colors.blueGrey,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Container(
              height: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
