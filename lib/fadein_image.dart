import 'base_demo.dart';
import 'package:flutter/material.dart';

class FadeInImageDemo extends BaseDemo {
  const FadeInImageDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: FadeInImage.assetNetwork(
        // FadeInImage.memoryNetwork

        // required String placeholder,
        // this.placeholderErrorBuilder,
        // required String image,
        // this.imageErrorBuilder,
        // AssetBundle? bundle,
        // double? placeholderScale,
        // double imageScale = 1.0,
        // this.excludeFromSemantics = false,
        // this.imageSemanticLabel,
        // this.fadeOutDuration = const Duration(milliseconds: 300),
        // this.fadeOutCurve = Curves.easeOut,
        // this.fadeInDuration = const Duration(milliseconds: 700),
        // this.fadeInCurve = Curves.easeIn,
        // this.width,
        // this.height,
        // this.fit,
        // this.placeholderFit,
        // this.alignment = Alignment.center,
        // this.repeat = ImageRepeat.noRepeat,
        // this.matchTextDirection = false,
        // int? placeholderCacheWidth,
        // int? placeholderCacheHeight,
        // int? imageCacheWidth,
        // int? imageCacheHeight,
        fadeInDuration: const Duration(milliseconds: 3000),
        placeholder: 'images/demo_image.png',
        placeholderScale: 2.0,
        image: BaseDemo.imgUrl,
        alignment: Alignment.center,
      ),
    );
  }
}
