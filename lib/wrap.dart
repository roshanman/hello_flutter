import 'base_demo.dart';
import 'package:flutter/material.dart';

class WrapDemo extends BaseDemo {
  const WrapDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: Wrap(
        // this.direction = Axis.horizontal,
        // this.alignment = WrapAlignment.start,
        spacing: 8.0,
        // this.runAlignment = WrapAlignment.start,
        runSpacing: 8.0,
        // this.crossAxisAlignment = WrapCrossAlignment.start,
        // this.textDirection,
        // this.verticalDirection = VerticalDirection.down,
        // this.clipBehavior = Clip.none,

        children: [
          ...List.generate(50, (index) {
            return Chip(
              // this.avatar,
              // required this.label,
              // this.labelStyle,
              // this.labelPadding,
              // this.deleteIcon,
              // this.onDeleted,
              // this.deleteIconColor,
              // this.deleteButtonTooltipMessage,
              // this.side,
              // this.shape,
              // this.clipBehavior = Clip.none,
              // this.focusNode,
              // this.autofocus = false,
              // this.backgroundColor,
              // this.padding,
              // this.visualDensity,
              // this.materialTapTargetSize,
              // this.elevation,
              // this.shadowColor,
              avatar: const Icon(
                Icons.verified_user,
                size: 20,
                color: Colors.blueGrey,
              ),
              label: Text("$index"),
              deleteIcon: const Icon(
                Icons.close,
                size: 20,
                color: Colors.red,
              ),
              onDeleted: () {},
            );
          }),
        ],
      ),
    );
  }
}
