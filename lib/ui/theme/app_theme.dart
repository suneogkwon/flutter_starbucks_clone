import 'package:flutter/material.dart';

/// Created by IntelliJ IDEA.
/// User: brighten17
/// Date: 2022-01-06
/// Time: 오후 6:31

const mainColor = Color(0xff00a862);

final appThemeData = ThemeData(
  backgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: mainColor,
  ),
  bottomNavigationBarTheme: _bottomNavigationBarThemeData,
);

const _bottomNavigationBarThemeData = BottomNavigationBarThemeData(
  backgroundColor: Colors.white,
  selectedItemColor: Color(0xff00a862),
  unselectedItemColor: Color(0xff979797),
);
