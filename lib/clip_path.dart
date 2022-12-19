import 'base_demo.dart';
import 'package:flutter/material.dart';

class ClipPathDemo extends BaseDemo {
  const ClipPathDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: ClipPath(
        clipper: _MyPathClipper(),
        child: Image.network(BaseDemo.imgUrl),
      ),
    );
  }
}

class _MyPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.addOval(Rect.fromCenter(center: const Offset(150, 150), width: 200, height: 200));
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
