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
import 'opacity.dart';
import 'hero.dart';
import 'fadein_image.dart';
import 'interactive_viewer.dart';
import 'clip_r_rect.dart';
import 'clip_oval.dart';
import 'clip_rect.dart';
import 'clip_path.dart';
import 'place_holder.dart';
import 'rich_text.dart';
import 'activity_indicator.dart';
import 'circular_progress_indicator.dart';
import 'linear_progress_indicator.dart';
import 'selectable_text.dart';
import 'snakebar.dart';
import 'drawer.dart';
import 'animated_icon.dart';
import 'will_pop_scope.dart';
import 'wrap.dart';
import 'alert_dialog.dart';
import 'limited_box.dart';
import 'animated_container.dart';
import 'indexed_stack.dart';
import 'banner.dart';
import 'sized_box.dart';
import 'fractionally_sizebox.dart';
import 'dismissble.dart';
import 'buttons.dart';
import 'grid_paper.dart';
import 'inkwell.dart';
import 'refresh_indicator.dart';
import 'animated_switcher.dart';
import 'draggable_scrollable_sheet.dart';
import 'chips.dart';
import 'animated_cross_fade.dart';
import 'backdrop_filter.dart';
import 'fitted_box.dart';

final List<MyDemo> allDemos = [
  const FittedBoxDemo(title: "FittedBox"),
  const BackdropFilterDemo(title: "BackdropFilter"),
  const AnimatedCrossFadeDemo(title: "AnimatedCrossFade"),
  const ChipsDemo(title: "Chips"),
  const DraggableScrollableSheetDemo(title: "DraggableScrollableSheet"),
  const AnimatedSwitcherDemo(title: "AnimatedSwitcher"),
  const RefreshIndicatorDemo(title: "RefreshIncicator"),
  const InkWellDemo(title: "Inkwell"),
  const GridePaperDemo(title: "GridPaper"),
  const ButtonsDemo(title: "Buttons"),
  const DismissbleDemo(title: "Dismissable"),
  const FractionallySizeBoxDemo(title: "FractionallySizeBox"),
  const SizedBoxDemo(title: "SizedBox"),
  const BannerDemo(title: "Banana"),
  const IndexedStackDemo(title: "IndexedStack"),
  const AnimatedContainerDemo(title: "AnimatedContainer"),
  const LimitedBoxDemo(title: "LimitedBox"),
  const AlertDialogDemo(title: "AlertDialog"),
  const WillPopScopeDemo(title: "WillPopScope"),
  const WrapDemo(title: "Wrap"),
  const AnimatedIconDemo(title: "AnimatedIcon"),
  const DrawerDemo(title: "Drawer"),
  const SnackBarDemo(title: "SnackBar"),
  const SelectableTextDemo(title: "SelectableText"),
  const LinearProgressIndicatorDemo(title: "LinearProgressIndicator"),
  const CircularProgressIndicatorDemo(title: "CircularProgressIndicator"),
  const ActivityIndicatorDemo(title: "ActivityIndicator"),
  const RichTextDemo(title: "RichTextDemo"),
  const PlaceHolderDemo(title: "PlaceHolder"),
  const ClipPathDemo(title: "ClipPath"),
  const ClipRectDemo(title: "ClipRect"),
  const ClipOvalDemo(title: "ClipOval"),
  const ClipRRectDemo(title: "ClipRRect"),
  const StackWidgetDemo(title: "Stack Widget"),
  const StadiumBorderShapeDemo(title: "Stadium Border Shape"),
  const ColorFilteredDemo(title: "Color Filterd"),
  const ImageDemo(title: "Image"),
  const CircleAvatarDemo(title: "CircleAvatar"),
  const CeneterDemo(title: "Center Widget"),
  const TooltipDemo(title: "Tooltip Widget"),
  const AspectRatioDemo(title: "Aspect Ratio Widget"),
  const SafeAreaDemo(title: "Safe Area"),
  const OpacityDemo(title: "Opacity"),
  const HeroDemo(title: "Hero"),
  const FadeInImageDemo(title: "FadeImage"),
  const InteractiveViewerDemo(title: "InteractiveViewer"),
  ...List.generate(20, (index) {
    return BaseDemo(
      title: "Demo $index",
    );
  }),
];
