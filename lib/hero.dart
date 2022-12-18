import 'base_demo.dart';
import 'package:flutter/material.dart';

class HeroDemo extends BaseDemo {
  const HeroDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const DetailWidget(
                title: "Detail Page",
              ),
            ),
          );
        },
        child: Hero(
          // this.createRectTween,
          // this.flightShuttleBuilder,
          // this.placeholderBuilder,
          // this.transitionOnUserGestures = false,
          tag: BaseDemo.imgUrl,
          child: SizedBox(
            width: 100,
            height: 200,
            child: Image.network(BaseDemo.imgUrl),
          ),
        ),
      ),
    );
  }
}

class DetailWidget extends BaseDemo {
  const DetailWidget({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Hero(
        tag: BaseDemo.imgUrl,
        child: Image.network(BaseDemo.imgUrl),
      ),
    );
  }
}
