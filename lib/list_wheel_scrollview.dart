import 'base_demo.dart';
import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends BaseDemo {
  const ListWheelScrollViewDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: ListWheelScrollView.useDelegate(
        itemExtent: 150,
        useMagnifier: false,
        diameterRatio: 2,
        childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                color: Colors.primaries[index % 10],
                alignment: Alignment.center,
                child: Text('$index'),
              );
            },
            childCount: 100),
      ),
    );
  }
}
