import 'package:flutter/material.dart';

import 'nick_step_widget.dart';

class AuthPagerWidget extends StatefulWidget {
  @override
  _AuthPagerWidgetState createState() => _AuthPagerWidgetState();
}

class _AuthPagerWidgetState extends State<AuthPagerWidget> {

  final _pageController = PageController(
      initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        NickStepWidget(),
        Text("passo 2"),
        Text("passo 3")
      ],
      scrollDirection: Axis.vertical,
    );
  }
}
