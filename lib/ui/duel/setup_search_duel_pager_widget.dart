import 'package:flutter/cupertino.dart';

class SetupSearchDuelPagerWidget extends StatefulWidget {
  @override
  _SetupSearchDuelPagerWidgetState createState() => _SetupSearchDuelPagerWidgetState();
}

class _SetupSearchDuelPagerWidgetState extends State<SetupSearchDuelPagerWidget> {

  final _pageController = PageController(
      initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        Text("passo 1"),
        Text("passo 2"),
        Text("passo 3")
      ],
      scrollDirection: Axis.vertical,
    );
  }
}
