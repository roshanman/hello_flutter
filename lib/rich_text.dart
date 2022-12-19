import 'package:flutter/material.dart';
import 'base_demo.dart';

class RichTextDemo extends BaseDemo {
  const RichTextDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: RichText(
        // this.textAlign = TextAlign.start,
        // this.textDirection,
        // this.softWrap = true,
        // this.overflow = TextOverflow.clip,
        // this.textScaleFactor = 1.0,
        // this.maxLines,
        // this.locale,
        // this.strutStyle,
        // this.textWidthBasis = TextWidthBasis.parent,
        // this.textHeightBehavior,
        text: const TextSpan(
          // this.recognizer,
          // MouseCursor? mouseCursor,
          // this.onEnter,
          // this.onExit,
          // this.semanticsLabel,
          // this.locale,
          // this.spellOut,
          text: "Hello",
          style: TextStyle(fontSize: 30, color: Colors.black),
          children: [
            WidgetSpan(
              child: SizedBox(
                width: 10,
              ),
            ),
            TextSpan(
              text: "Flutter",
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
            WidgetSpan(
              child: FlutterLogo(
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
