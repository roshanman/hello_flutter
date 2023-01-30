import 'base_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore_for_file: camel_case_types
class iOSPresentPageDemo extends BaseDemo {
  const iOSPresentPageDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              fullscreenDialog: true,
              builder: (context) => const iOSPresentPageDemo(title: 'New Page'),
            ),
          );
        },
        child: const Text("Present Page"),
      ),
    );
  }
}
