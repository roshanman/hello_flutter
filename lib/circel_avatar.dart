import 'base_demo.dart';
import 'package:flutter/material.dart';

class CircleAvatarDemo extends BaseDemo {
  const CircleAvatarDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const Divider(),
            CircleAvatar(
              foregroundColor: Colors.red,
              backgroundColor: Colors.amber,
              radius: 120,
              child: ClipOval(
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: Image.network(
                    BaseDemo.imgUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Divider(),
            const CircleAvatar(
              radius: 60,
              child: Text(
                "A",
                style: TextStyle(fontSize: 40),
              ),
            ),
            const Divider(),
            ClipOval(
              child: AspectRatio(
                aspectRatio: 1.0,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    print("object is $constraints");
                    return Image.network(
                      BaseDemo.imgUrl,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
