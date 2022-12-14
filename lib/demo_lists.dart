import 'base_demo.dart';

final List<BaseDemo> allDemos = [
  ...List.generate(20, (index) {
    return BaseDemo(
      title: "Demo $index",
    );
  }),
];
