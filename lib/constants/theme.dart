import 'package:flutter/material.dart';

final black = Color(0xFF1C0F13);

final theme = ThemeData(
    backgroundColor: Color(0xFFF5F3F1),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
        minimumSize: MaterialStateProperty.all(Size.fromHeight(50)),
        backgroundColor: MaterialStateProperty.all(black),
      )
    ),
    textTheme: TextTheme(
      button: TextStyle(
        fontFamily: "WorkSans",
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      headline4: TextStyle(
        fontFamily: "WorkSans",
        color: black,
        fontWeight: FontWeight.w600,
      ),
      headline5: TextStyle(
        fontFamily: "WorkSans",
        color: black,
        fontWeight: FontWeight.w600,
      ),
      subtitle1: TextStyle(
        fontFamily: "Nunito",
        color: black.withOpacity(0.9),
        fontWeight: FontWeight.w400,
      ),
    ).apply(
      bodyColor: black,
      displayColor: black,
    ));
