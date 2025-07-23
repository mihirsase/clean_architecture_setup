import 'package:flutter/material.dart';

extension SizedBoxExtention on num {
  SizedBox get hGap => SizedBox(width: toDouble());

  SizedBox get vGap => SizedBox(height: toDouble());

  SizedBox get squareGap => SizedBox.square(dimension: toDouble());
}
