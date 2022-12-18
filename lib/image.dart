import 'base_demo.dart';
import 'package:flutter/material.dart';

class ImageDemo extends BaseDemo {
  const ImageDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FadeInImage.assetNetwork(
            placeholder: 'images/demo_image.png',
            placeholderScale: 2.0,
            image: BaseDemo.imgUrl,
            alignment: Alignment.center,
          ),
          const Divider(),
          Image.asset('images/demo_image.png'),
          const Divider(),
          Image.network(
            BaseDemo.imgUrl,
            fit: BoxFit.fitWidth,
          ),
          const Divider(),
          SizedBox(
            width: 300,
            height: 300,
            child: Image.network(
              BaseDemo.imgUrl,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
