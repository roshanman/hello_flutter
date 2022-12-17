import 'base_demo.dart';
import 'stack_demo.dart';
import 'stadium_border.dart';
import 'color_filtered.dart';
import 'image.dart';

final List<BaseDemo> allDemos = [
  const StackWidgetDemo(title: "Stack Widget"),
  const StadiumBorderShapeDemo(title: "Stadium Border Shape"),
  const ColorFilteredDemo(title: "Color Filterd"),
  const ImageDemo(title: "Image"),
  ...List.generate(20, (index) {
    return BaseDemo(
      title: "Demo $index",
    );
  }),
];
