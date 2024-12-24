import 'package:bookly_app/core/util/assets.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const textStule18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStule20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: AssetsData.kGtSectraFine,
  );
  static const textStule14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textStule16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStule30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    fontFamily: AssetsData.kGtSectraFine,
  );
}
