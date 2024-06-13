import 'package:flutter/material.dart';

class Paddings {
  static final p2 = const EdgeInsets.all(2);
  static final p4 = const EdgeInsets.all(4);
  static final p6 = const EdgeInsets.all(6);
  static final p8 = const EdgeInsets.all(8);
  static final p12 = const EdgeInsets.all(12);
  static final p10 = const EdgeInsets.all(10);
  static final p16 = const EdgeInsets.all(16);
  static final p20 = const EdgeInsets.all(20);
  static final p24 = const EdgeInsets.all(24);
  static final p28 = const EdgeInsets.all(28);
  static final p30 = const EdgeInsets.all(30);
  static final p32 = const EdgeInsets.all(32);
  static final p36 = const EdgeInsets.all(36);
  static final p40 = const EdgeInsets.all(40);
  static final p44 = const EdgeInsets.all(44);
  static final p48 = const EdgeInsets.all(48);
  static final p52 = const EdgeInsets.all(52);
  static final p56 = const EdgeInsets.all(56);
}

extension Symmetric on EdgeInsets {
  EdgeInsets get horizontally {
    return EdgeInsets.symmetric(horizontal: left);
  }

  EdgeInsets get vertically {
    return EdgeInsets.symmetric(vertical: top);
  }

  EdgeInsets get onlyLeft {
    return EdgeInsets.only(left: left);
  }

  EdgeInsets get onlyRight {
    return EdgeInsets.only(right: right);
  }

  EdgeInsets get onlyBottom {
    return EdgeInsets.only(bottom: bottom);
  }

  EdgeInsets get onlyTop {
    return EdgeInsets.only(top: top);
  }

  EdgeInsets get exceptTop {
    return EdgeInsets.only(
      bottom: bottom,
      left: left,
      right: right,
    );
  }

  EdgeInsets get exceptBottom {
    return EdgeInsets.only(
      top: top,
      left: left,
      right: right,
    );
  }
}
