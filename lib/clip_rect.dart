import 'base_demo.dart';
import 'package:flutter/material.dart';

class ClipRectDemo extends BaseDemo {
  const ClipRectDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColoredBox(
            color: Colors.grey,
            child: ClipRect(
              // ClipRect 只会裁剪不会改变child的size
              clipper: _MyClipper(),
              child: Container(
                color: Colors.red,
                width: 200,
                height: 400,
              ),
            ),
          ),
          const Divider(),
          Container(
            color: Colors.green,
            width: 50,
            height: 100,
          ),
        ],
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCenter(center: size.center(Offset.zero), width: 50, height: 100);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
