import 'package:flutter/material.dart';
import 'package:playdiators/theme.dart';
import 'package:playdiators/ui/utils/circled_image_widget.dart';
import 'package:dotted_border/dotted_border.dart';

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
                            colorFilter: ColorFilter.mode(Colors.green, BlendMode.multiply),
                            child: Image.asset(
                                "assets/images/sample_1.jpg",
                            ),
                          )
                        ),
                      ),
                      Transform(
                        transform: Matrix4.skewX(0.1),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 9.0),
                                        child: Text(
                                          "BADTIGER_BR",
                                          style: home_player_nick_text_style,
                                        ),
                                      ),
                                    )
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      12.0, 12.0, 12.0, 0
                                  ),
                                  child: CircledImageWidget(
                                    asset: "assets/images/sample_3.jpg",
                                    size: 50.0,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    "V s",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Road Rage",
                                      fontSize: 36.0
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0, 0, 12.0, 12.0
                                  ),
                                  child: CircledImageWidget(
                                    asset: "assets/images/sample_2.jpg",
                                    size: 50.0,
                                  ),
                                ),
                                Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 9.0),
                                        child: Text(
                                          "LOBOMBOM",
                                          style: home_player_nick_text_style,
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ]
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Transform(
                            transform: Matrix4.skewX(0.1),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(9.0, 9.0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "HEARTHSTONE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "MOBILE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0
                                    ),
                                  ),
                                  Text(
                                    "05/01/2021",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0
                                    ),
                                  ),
                                  Text(
                                    "08:20",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Transform(
                          transform: Matrix4.skewX(0.1),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Transform.rotate(
                              angle: 100,
                              child: DottedBorder(
                                color: Colors.yellow,
                                strokeWidth: 6,
                                radius: Radius.circular(30),
                                borderType: BorderType.Circle,
                                padding: EdgeInsets.all(35.0),
                                dashPattern: [12.0],
                                child: Text(
                                  "VITÓRIA",
                                  style: TextStyle(
                                    fontFamily: default_action_font,
                                    color: Colors.yellow,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.1
                                  ),
                                ),
                              ),
                            ),
                          ),
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