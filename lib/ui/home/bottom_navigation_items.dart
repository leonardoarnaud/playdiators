import 'package:flutter/material.dart';
import 'package:playdiators/theme.dart';
import '../../strings.dart';

const _defaultBottomNavigationStyle = TextStyle(
    fontFamily: default_action_font
);

const List<BottomNavigationBarItem> homeNavigationItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.whatshot),
      title: Text(
          Strings.home_navigation_first,
          style: _defaultBottomNavigationStyle
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.leaderboard_rounded),
        title: Text(
            Strings.home_navigation_second,
            style: _defaultBottomNavigationStyle
        ),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.star_rounded),
        title: Text(
            Strings.home_navigation_third,
            style: _defaultBottomNavigationStyle
        ),
    )
];