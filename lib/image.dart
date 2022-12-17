import 'base_demo.dart';
import 'package:flutter/material.dart';

class ImageDemo extends BaseDemo {
  const ImageDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    const imgUrl =
        'https://img2.baidu.com/it/u=2946844257,1117642570&fm=253&fmt=auto&app=138&f=JPEG?w=1500&h=725';

    return SingleChildScrollView(
      child: Column(
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'images/demo_image.png',
            placeholderScale: 2.0,
            image: imgUrl,
            alignment: Alignment.center,
          ),
          const Divider(),
          Image.asset('images/demo_image.png'),
          const Divider(),
          Image.network(
            imgUrl,
            fit: BoxFit.fitWidth,
          ),
          const Divider(),
          SizedBox(
            width: 300,
            height: 300,
            child: Image.network(
              imgUrl,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
