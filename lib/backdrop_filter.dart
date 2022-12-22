import 'dart:ui';

import 'base_demo.dart';
import 'package:flutter/material.dart';

class BackdropFilterDemo extends BaseDemo {
  const BackdropFilterDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                height: 600,
                child: Image.network(BaseDemo.imgUrl).debugLayoutConstraints(),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Center(
                  child: Container(
                    color: Colors.red.withOpacity(0),
                    child: const Text(
                      '这是一段不被模糊的文字',
                      style: TextStyle(color: Colors.red, fontSize: 22),
                    ),
                  ),
                ),
              ).debugLayoutConstraints(),
            ],
          )
        ],
      ),
    );
  }
}
