import 'base_demo.dart';
import 'package:flutter/material.dart';

class InteractiveViewerDemo extends BaseDemo {
  const InteractiveViewerDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: InteractiveViewer(
        // this.clipBehavior = Clip.hardEdge,
        // this.alignPanAxis = false,
        boundaryMargin: const EdgeInsets.all(30),
        // this.constrained = true,
        // // These default scale values were eyeballed as reasonable limits for common
        // // use cases.
        maxScale: 3.5,
        minScale: 0.8,
        // this.onInteractionEnd,
        // this.onInteractionStart,
        // this.onInteractionUpdate,
        // this.panEnabled = true,
        scaleEnabled: true,
        scaleFactor: 200.0,
        // this.transformationController,
        child: Image.network(BaseDemo.imgUrl),
      ),
    );
  }
}
