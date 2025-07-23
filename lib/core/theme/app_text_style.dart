import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static final display = _DisplayTextStyle();
  static final title = _TitleTextStyle();
  static final subtitle = _SubtitleTextStyle();
  static final body = _BodyTextStyle();
  static final label = _LabelTextStyle();
}

class _DisplayTextStyle {
  TextStyle get large => _base(72, 84);
  TextStyle get medium => _base(58, 72);
  TextStyle get small => _base(46, 54);

  TextStyle _base(double size, double height) => TextStyle(
    fontSize: size,
    height: height / size,
    fontWeight: FontWeight.w400,
    fontFamily: 'PPSupplySans',
    color: AppColors.text.primary,
  );
}

class _TitleTextStyle {
  TextStyle get large => _base(40, 46);
  TextStyle get medium => _base(36, 42);
  TextStyle get small => _base(32, 38);

  TextStyle _base(double size, double height) => TextStyle(
    fontSize: size,
    height: height / size,
    fontWeight: FontWeight.w400,
    fontFamily: 'PPSupplySans',
    color: AppColors.text.primary,
  );
}

class _SubtitleTextStyle {
  TextStyle get large => _base(28, 32, 0.005);
  TextStyle get medium => _base(24, 28, 0.01);
  TextStyle get small => _base(20, 24, 0.01);

  TextStyle _base(double size, double height, double spacingFactor) =>
      TextStyle(
        fontSize: size,
        height: height / size,
        fontWeight: FontWeight.w400,
        fontFamily: 'LabGrotesque',
        letterSpacing: size * spacingFactor,
        color: AppColors.text.primary,
      );
}

class _BodyTextStyle {
  TextStyle get large => _base(16, 20, 0.01);
  TextStyle get medium => _base(14, 18, 0.015);
  TextStyle get small => _base(12, 16, 0.02);

  TextStyle get largeStrike => _strike(16, 20, 0.02);
  TextStyle get mediumStrike => _strike(14, 18, 0.02);
  TextStyle get smallStrike => _strike(12, 16, 0.02);

  TextStyle _base(double size, double height, double spacingFactor) =>
      TextStyle(
        fontSize: size,
        height: height / size,
        fontWeight: FontWeight.w400,
        fontFamily: 'LabGrotesque',
        letterSpacing: size * spacingFactor,
        color: AppColors.text.primary,
      );

  TextStyle _strike(double size, double height, double spacingFactor) => _base(
    size,
    height,
    spacingFactor,
  ).copyWith(decoration: TextDecoration.lineThrough);
}

class _LabelTextStyle {
  TextStyle get xLarge => _base(20, 24, 0.02);
  TextStyle get large => _base(16, 20, 0.02);
  TextStyle get medium => _base(14, 18, 0.04);
  TextStyle get small => _base(12, 16, 0.04);
  TextStyle get xSmall => _base(10, 12, 0.04);

  TextStyle get largeUnder => _under(16, 20, 0.04);
  TextStyle get mediumUnder => _under(14, 18, 0.04);
  TextStyle get smallUnder => _under(12, 16, 0.04);

  TextStyle get mediumStrike => _strike(14, 16, 0.04);

  TextStyle _base(double size, double height, double spacingFactor) =>
      TextStyle(
        fontSize: size,
        height: height / size,
        fontWeight: FontWeight.w400,
        fontFamily: 'PPSupplySans',
        letterSpacing: size * spacingFactor,
        color: AppColors.text.primary,
      );

  TextStyle _under(double size, double height, double spacingFactor) => _base(
    size,
    height,
    spacingFactor,
  ).copyWith(decoration: TextDecoration.underline);

  TextStyle _strike(double size, double height, double spacingFactor) => _base(
    size,
    height,
    spacingFactor,
  ).copyWith(decoration: TextDecoration.lineThrough);
}
