import 'base_demo.dart';
import 'stack_demo.dart';
import 'stadium_border.dart';
import 'color_filtered.dart';
import 'image.dart';
import 'circel_avatar.dart';
import 'center.dart';
import 'tooltip.dart';
import 'aspect_ratio.dart';
import 'safe_area.dart';

final List<BaseDemo> allDemos = [
  const StackWidgetDemo(title: "Stack Widget"),
  const StadiumBorderShapeDemo(title: "Stadium Border Shape"),
  const ColorFilteredDemo(title: "Color Filterd"),
  const ImageDemo(title: "Image"),
  const CircleAvatarDemo(title: "CircleAvatar"),
  const CeneterDemo(title: "Center Widget"),
  const TooltipDemo(title: "Tooltip Widget"),
  const AspectRatioDemo(title: "Aspect Ratio Widget"),
  const SafeAreaDemo(title: "Safe Area"),
  ...List.generate(20, (index) {
    return BaseDemo(
      title: "Demo $index",
    );
  }),
];
