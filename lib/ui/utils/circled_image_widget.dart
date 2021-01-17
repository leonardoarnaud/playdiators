import 'package:flutter/material.dart';

class CircledImageWidget extends StatelessWidget {

  final String asset;
  final double size;

  CircledImageWidget({
    this.asset,
    this.size
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.white,
                width: 1.0,
                style: BorderStyle.solid
            )
            ,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(asset)
            )
        )
    );
  }
}
