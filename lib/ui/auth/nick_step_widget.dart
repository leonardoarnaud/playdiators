import 'package:flutter/material.dart';

import '../../strings.dart';

class NickStepWidget extends StatefulWidget {
  @override
  _NickStepWidgetState createState() => _NickStepWidgetState();
}

class _NickStepWidgetState extends State<NickStepWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(Strings.nick_step_title),
            FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Icon(Icons.close_rounded)
            )
          ],
        )
      ],
    );
  }
}
