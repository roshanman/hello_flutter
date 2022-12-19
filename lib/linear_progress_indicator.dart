import 'base_demo.dart';
import 'package:flutter/material.dart';

class LinearProgressIndicatorDemo extends BaseDemo {
  const LinearProgressIndicatorDemo({Key? key, required String title})
      : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: LinearProgressIndicator(),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: LinearProgressIndicator(
              // double? value,
              // Color? backgroundColor,
              // Color? color,
              // Animation<Color?>? valueColor,
              // this.minHeight,
              // String? semanticsLabel,
              // String? semanticsValue,
              value: 0.5,
              backgroundColor: Colors.yellow,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
