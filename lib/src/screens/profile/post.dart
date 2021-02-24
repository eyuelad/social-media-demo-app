import 'package:flutter/material.dart';
import 'package:social_demo/src/styles/colors.dart';

class PostMini extends StatelessWidget {
  final String img;

  PostMini({@required this.img});

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: colors.grayLight
        )
      ),
      child: FittedBox(
        child: Image.asset(img),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}