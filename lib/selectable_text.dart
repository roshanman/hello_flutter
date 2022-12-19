import 'base_demo.dart';
import 'package:flutter/material.dart';

class SelectableTextDemo extends BaseDemo {
  const SelectableTextDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    // SelectableText.rich(textSpan)
    return const Center(
      child: SelectableText(
        "这是一个可以被选择的文字内容!\n这是一个可以被选择的文字内容!\n这是一个可以被选择的文字内容!\n",
        // this.focusNode,
        // this.style,
        // this.strutStyle,
        // this.textAlign,
        // this.textDirection,
        // this.textScaleFactor,
        // this.showCursor = false,
        // this.autofocus = false,
        // ToolbarOptions? toolbarOptions,
        // this.minLines,
        // this.maxLines,
        // this.cursorWidth = 2.0,
        // this.cursorHeight,
        // this.cursorRadius,
        // this.cursorColor,
        // this.selectionHeightStyle = ui.BoxHeightStyle.tight,
        // this.selectionWidthStyle = ui.BoxWidthStyle.tight,
        // this.dragStartBehavior = DragStartBehavior.start,
        // this.enableInteractiveSelection = true,
        // this.selectionControls,
        // this.onTap,
        // this.scrollPhysics,
        // this.semanticsLabel,
        // this.textHeightBehavior,
        // this.textWidthBasis,
        // this.onSelectionChanged,
      ),
    );
  }
}
