import 'base_demo.dart';
import 'stack_demo.dart';
import 'stadium_border.dart';
import 'color_filtered.dart';

final List<BaseDemo> allDemos = [
  const StackWidgetDemo(title: "Stack Widget"),
  const StadiumBorderShapeDemo(title: "Stadium Border Shape"),
  const ColorFilteredDemo(title: "Color Filterd"),
  ...List.generate(20, (index) {
    return BaseDemo(
      title: "Demo $index",
    );
  }),
];
