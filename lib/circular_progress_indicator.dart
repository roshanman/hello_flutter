import 'base_demo.dart';
import 'package:flutter/material.dart';

class CircularProgressIndicatorDemo extends BaseDemo {
  const CircularProgressIndicatorDemo({Key? key, required String title})
      : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(
              // double? value,
              // Color? backgroundColor,
              // Color? color,
              // Animation<Color?>? valueColor,
              // this.strokeWidth = 4.0,
              // String? semanticsLabel,
              // String? semanticsValue,
              ),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(
            color: Colors.red,
            backgroundColor: Colors.yellow,
            strokeWidth: 2,
          ),
        ],
      ),
    );
  }
}
