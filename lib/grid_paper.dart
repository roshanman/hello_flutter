import 'base_demo.dart';
import 'package:flutter/material.dart';

class GridePaperDemo extends BaseDemo {
  const GridePaperDemo({Key? key, required String title}) : super(key: key, title: title);

  @override
  Widget bodyWidget({required BuildContext context}) {
    return Center(
      child: GridPaper(
        color: Colors.grey.withAlpha(150),
        child: const SizedBox(
          width: 300,
          height: 300,
          //color: Colors.yellow,
        ),
      ),
    );
  }
}
