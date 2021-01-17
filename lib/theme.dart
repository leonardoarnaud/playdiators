import 'package:flutter/material.dart';

const default_action_font = 'Playstation';

const home_player_nick_text_style = TextStyle(
    fontFamily: default_action_font,
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.1
);

ThemeData theme = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: const Color(0xFF0a3b5f),
  primaryColorDark: const Color(0xFF0a3b5f),
  accentColor: const Color(0xFF0f5c95),
  primaryColorLight: const Color(0xFF1687db),
  backgroundColor: const Color(0xFF111111),
  scaffoldBackgroundColor: const Color(0xFF111111),
  textTheme: TextTheme(
    bodyText2: TextStyle(
      fontFamily: 'Sans Serif'
    )
  ),
  appBarTheme: AppBarTheme(
    textTheme: TextTheme(
      headline6: TextStyle(
        fontFamily: default_action_font,
        fontSize: 21
      )
    )
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xFF0a3b5f),
    selectedIconTheme: IconThemeData(
      color: const Color(0xFFFFFFFF),
    ),
    unselectedIconTheme: IconThemeData(
        color: const Color(0x90FFFFFF)
    ),
    selectedItemColor: const Color(0xFFFFFFFF),
    unselectedItemColor: const Color(0x90FFFFFF),

  )
);