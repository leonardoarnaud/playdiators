import 'package:flutter/material.dart';
import 'package:playdiators/theme.dart';
import 'package:playdiators/ui/utils/circled_image_widget.dart';
import 'package:dotted_border/dotted_border.dart';

import 'duel_item_widget.dart';

class DuelsPageWidget extends StatefulWidget {
  @override
  _DuelsPageWidgetState createState() => _DuelsPageWidgetState();
}

class _DuelsPageWidgetState extends State<DuelsPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DuelItemWidget(
          gameName: "Fifa 2020",
          platform: "Playstation",
          createdAt: 1610942100,
          player1Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtTQoyY3-n-ZnGbTbbD4xXYY7TeesIDWshXA&usqp=CAU",
          player1Nick: "LanceThompson",
          player2Image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNeww0AKpU_317l7lUFwUozJOUZ3p8pPXpdA&usqp=CAU",
          player2Nick: "gabriel_rocha",
          status: DuelItemType.DEFEAT
        )
      ]
    );
  }
}