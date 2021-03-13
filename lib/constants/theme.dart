import 'package:flutter/material.dart';

final black = Color(0xFF1C0F13);

final theme = ThemeData(
    backgroundColor: Color(0xFFF5F3F1),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size.fromHeight(50)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
        backgroundColor: MaterialStateProperty.all(Colors.black),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      )
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 0.0,
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
      subtitle2: TextStyle(
        fontFamily: "WorkSans",
        color: black,
        fontWeight: FontWeight.w500,
      ),
      bodyText2: TextStyle(
        fontFamily: "Nunito",
        color: black.withOpacity(0.45),
        fontWeight: FontWeight.w300,
      )
    ).apply(
      bodyColor: black,
      displayColor: black,
    ));
