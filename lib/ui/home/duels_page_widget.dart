import 'package:flutter/material.dart';

class DuelsPageWidget extends StatefulWidget {
  @override
  _DuelsPageWidgetState createState() => _DuelsPageWidgetState();
}

class _DuelsPageWidgetState extends State<DuelsPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(27.0, 5.0, 9.0, 5.0),
            child: SizedBox(
              height: 200.0,
              child: Transform(
                transform: Matrix4.skewX(-0.1),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      border: Border.all(width: 0.2),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.0,
                            spreadRadius: 0.0,
                            offset: Offset(0, 0),
                          color: Colors.white
                        ),
                      ],
                      color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: ColorFiltered(
                            colorFilter: ColorFilter.mode(Theme.of(context).primaryColorLight, BlendMode.multiply),
                            child: Image.asset(
                                "assets/images/sample_1.jpg",
                            ),
                          )
                        ),
                      ),
                      Transform(
                        transform: Matrix4.skewX(0.1),
                        child: Center(
                            child: Text(
                              "VdasdaasdsS",
                              style: TextStyle(
                                color: Colors.white
                              ),
                            )
                        ),
                      )
                    ]
                  ),
                ),
              ),
            ),
          ),
        ),
      ]
    );
  }
}
/*
Image.asset(
                            "assets/images/sample_1.jpg",
                          fit: BoxFit.cover,
                        ),
 */