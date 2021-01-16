import 'package:flutter/material.dart';

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
            Text("Qual seu nick?"),
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
