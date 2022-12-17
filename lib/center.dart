import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'base_demo.dart';
import 'package:flutter/material.dart';

class CeneterDemo extends BaseDemo {
  const CeneterDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Container(
      color: Colors.amber,
      child: Center(
        widthFactor: 2,
        heightFactor: 5,
        child: Container(
          color: Colors.red,
          child: const Text(
            "This is center widget",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
