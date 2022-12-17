import 'base_demo.dart';
import 'package:flutter/material.dart';

class CircleAvatarDemo extends BaseDemo {
  const CircleAvatarDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    const imgUrl =
        'https://img2.baidu.com/it/u=2946844257,1117642570&fm=253&fmt=auto&app=138&f=JPEG?w=1500&h=725';

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
                    imgUrl,
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
                      imgUrl,
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
