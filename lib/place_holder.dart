import 'base_demo.dart';
import 'package:flutter/material.dart';

class PlaceHolderDemo extends BaseDemo {
  const PlaceHolderDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Placeholder(
          strokeWidth: 4.0,
          // unbounded时选用的size
          fallbackWidth: 200.0,
          fallbackHeight: 200.0,
          color: Colors.red,
        ),
      ),
    );
  }
}
