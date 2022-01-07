import 'package:flutter/material.dart';
import 'package:starbucks_clone/constants/values.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-06
/// Time: 오후 6:31

final appThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Values.primaryColor,
  ),
  bottomNavigationBarTheme: _bottomNavigationBarThemeData,
);

const _bottomNavigationBarThemeData = BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  selectedItemColor: Values.primaryColor,
  unselectedItemColor: Color(0xff979797),
);
