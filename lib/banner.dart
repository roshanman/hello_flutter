import 'base_demo.dart';
import 'package:flutter/material.dart';

class BannerDemo extends BaseDemo {
  const BannerDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRect(
            child: Banner(
              // textStyle: const TextStyle(color: Colors.red),
              color: Colors.red,
              message: "DEBUG",
              location: BannerLocation.topEnd,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber[300],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Banner(
            // textStyle: const TextStyle(color: Colors.red),
            color: Colors.red,
            message: "DEBUG",
            location: BannerLocation.topEnd,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber[300],
            ),
          )
        ],
      ),
    );
  }
}
