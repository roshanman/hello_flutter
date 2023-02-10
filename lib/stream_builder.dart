// ignore_for_file: void_checks

import 'dart:async';
import 'base_demo.dart';
import 'package:flutter/material.dart';

class StreamBuilderDemo extends BaseDemo {
  const StreamBuilderDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: StreamBuilder(
        stream: _intervalStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(
              "${snapshot.data}",
              style: Theme.of(context).textTheme.headlineMedium,
            );
          } else {
            return const Text("no data now");
          }
        },
      ),
    );
  }

  Stream<int> _intervalStream() async* {
    for (int i = 0; i < 100; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }
}
