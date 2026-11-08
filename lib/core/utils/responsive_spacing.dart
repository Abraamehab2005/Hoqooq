import 'package:flutter/widgets.dart';

extension ResponsiveSpacing on BuildContext {
  /// 1.0 على الشاشات الطويلة (زي التصميم)، وبينزل لحد 0.75 على القصيرة
  double get _spacingScale =>
      (MediaQuery.sizeOf(this).height / 800).clamp(0.75, 1.0);

  /// بياخد المسافة من التصميم ويرجّعها متناسبة مع ارتفاع الشاشة
  double gap(double designValue) => designValue * _spacingScale;
}