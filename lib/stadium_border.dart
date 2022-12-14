import 'package:flutter/material.dart';
import 'base_demo.dart';

class StadiumBorderShapeDemo extends BaseDemo {
  const StadiumBorderShapeDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: const ShapeDecoration(
              color: Colors.green,
              shape: StadiumBorder(side: BorderSide(width: 10, color: Colors.blue)),
            ),
            child: const Text("Flutter"),
          ),
          Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: const ShapeDecoration(
              color: Colors.brown,
              shape: StadiumBorder(),
            ),
            child: const Text("Flutter"),
          ),
          Container(
            width: 300,
            height: 150,
            alignment: Alignment.center,
            decoration: const ShapeDecoration(
              color: Colors.amber,
              shape: StadiumBorder(),
            ),
            child: const Text("Flutter"),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              // returns ButtonStyle
              primary: Colors.red,
              onPrimary: Colors.white,
              side: const BorderSide(width: 3, color: Colors.green), // Work!
              shape: const StadiumBorder(
                side: BorderSide(
                  width: 10,
                  color: Colors.blue,
                ), // Not Working (Read Note).
              ),
            ),
            child: Text(
              "ElevatedButton",
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ],
      ),
    );
  }
}
