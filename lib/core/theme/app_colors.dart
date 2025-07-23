import 'package:flutter/material.dart';
import 'package:shop_me/core/theme/app_pallete.dart';

class AppColors {
  static final surface = _AuralSurfaceColors();
  static final text = _AuralTextColors();
  static final label = _AuralLabelColors();
  static final divider = _AuralDividerColors();
  static final icon = _AuralIconColors();
  static final button = _AuralButtonColors();
  static final tag = _AuralTagColors();
  static final progress = _AuralProgressColors();
  static final selection = _AuralSelection();
}

class _AuralSurfaceColors {
  Color get primary {
    return AppPallete.neutral[50]!;
  }

  Color get secondary {
    return AppPallete.neutral[100]!;
  }

  Color get tertiary {
    return AppPallete.neutral[400]!;
  }

  Color get contrast {
    return AppPallete.neutral[1000]!;
  }

  Color get infoBlue {
    return AppPallete.blue[500]!;
  }

  Color get infoBlueSec {
    return AppPallete.blue[100]!;
  }

  Color get positiveGreen {
    return AppPallete.green[500]!;
  }

  Color get positiveGreenSec {
    return AppPallete.green[100]!;
  }

  Color get negativeRed {
    return AppPallete.red[400]!;
  }

  Color get negativeRedSec {
    return AppPallete.red[100]!;
  }

  Color get warningYellow {
    return AppPallete.yellow[500]!;
  }

  Color get warningYellowSec {
    return AppPallete.yellow[100]!;
  }

  Color get frostedEffect {
    return AppPallete.neutral[500]!;
  }

  Color get romanticPink {
    return const Color(0xFFFF3FF9);
  }
}

class _AuralTextColors {
  Color get primary {
    return AppPallete.neutral[1100]!;
  }

  Color get secondary {
    return AppPallete.neutral[800]!;
  }

  Color get tertiary {
    return AppPallete.neutral[600]!;
  }

  Color get placeholder {
    return AppPallete.neutral[400]!;
  }

  Color get inactive {
    return AppPallete.neutral[300]!;
  }

  Color get contrast {
    return AppPallete.neutral[100]!;
  }

  Color get infoBlue {
    return AppPallete.blue[500]!;
  }

  Color get infoBlueSec {
    return AppPallete.blue[900]!;
  }

  Color get infoBlueTert {
    return AppPallete.blue[100]!;
  }

  Color get positiveGreen {
    return AppPallete.green[500]!;
  }

  Color get positiveGreenSec {
    return AppPallete.green[900]!;
  }

  Color get positiveGreenTert {
    return AppPallete.green[100]!;
  }

  Color get negativeRed {
    return AppPallete.red[600]!;
  }

  Color get negativeRedSec {
    return AppPallete.red[900]!;
  }

  Color get negativeRedTert {
    return AppPallete.red[1000]!;
  }

  Color get warningYellow {
    return AppPallete.yellow[500]!;
  }

  Color get warningYellowSec {
    return AppPallete.yellow[800]!;
  }

  Color get warningYellowTert {
    return AppPallete.yellow[100]!;
  }

  Color get fmSecondary {
    return AppPallete.secondary[800]!;
  }
}

class _AuralLabelColors {
  Color get primary {
    return AppPallete.yellow[500]!;
  }

  Color get secondary {
    return AppPallete.neutral[600]!;
  }

  Color get tertiary {
    return AppPallete.neutral[500]!;
  }
}

class _AuralDividerColors {
  Color get primary {
    return AppPallete.neutral[300]!;
  }

  Color get secondary {
    return AppPallete.neutral[200]!;
  }

  Color get tertiary {
    return AppPallete.neutral[100]!;
  }

  Color get contrast {
    return AppPallete.neutral[700]!;
  }

  Color get brandPrimary {
    return AppPallete.primary[600]!;
  }

  Color get brandSecondary {
    return AppPallete.secondary[800]!;
  }
}

class _AuralIconColors {
  Color get active {
    return AppPallete.neutral[1100]!;
  }

  Color get inactive {
    return AppPallete.neutral[500]!;
  }

  Color get background {
    return AppPallete.neutral[200]!;
  }

  Color get brandSecondary {
    return AppPallete.secondary[900]!;
  }

  Color get contrast {
    return AppPallete.neutral[100]!;
  }

  Color get infoBlue {
    return AppPallete.blue[500]!;
  }

  Color get infoBlueSec {
    return AppPallete.blue[900]!;
  }

  Color get infoBlueTert {
    return AppPallete.blue[100]!;
  }

  Color get negativeRed {
    return AppPallete.red[600]!;
  }

  Color get negativeRedSec {
    return AppPallete.red[900]!;
  }

  Color get negativeRedTert {
    return AppPallete.red[1000]!;
  }

  Color get warningYellow {
    return AppPallete.yellow[500]!;
  }

  Color get warningYellowSec {
    return AppPallete.yellow[800]!;
  }

  Color get warningYellowTert {
    return AppPallete.yellow[100]!;
  }

  Color get positiveGreen {
    return AppPallete.green[500]!;
  }

  Color get positiveGreenSec {
    return AppPallete.green[900]!;
  }

  Color get positiveGreenTert {
    return AppPallete.green[100]!;
  }
}

class _AuralButtonColors {
  Color get stroke {
    return AppPallete.neutral[400]!;
  }

  Color get fillSecondary {
    return AppPallete.neutral[200]!;
  }

  Color get shadowSecondary {
    return AppPallete.neutral[100]!;
  }
}

class _AuralTagColors {
  Color get lemon {
    return AppPallete.lemon[500]!;
  }

  Color get emerald {
    return AppPallete.emerald[500]!;
  }

  Color get hotPink {
    return AppPallete.hotPink[500]!;
  }

  Color get electricBlue {
    return AppPallete.electricBlue[600]!;
  }

  Color get neonGreen {
    return AppPallete.neonGreen[500]!;
  }
}

class _AuralProgressColors {
  Color get secondary {
    return AppPallete.green[500]!;
  }
}

class _AuralSelection {
  Color get fmPrimary {
    return AppPallete.primary[500]!;
  }
}
