import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF6BD1FF);
  static const List<Color> headerGradient = <Color>[
    Color(0xFF6BD1FF),
    Color(0xFFFFFFFF),
  ];

  static const Color card = Color(0xFFF1F1F1);
  static const Color iconBackground = Color(0xFFD6EBF4);
  static const Color transactionColor = Color(0xFF717171);
}

class AppStyles {
  static const BoxDecoration headerGradient = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: AppColors.headerGradient,
    ),
  );
}


