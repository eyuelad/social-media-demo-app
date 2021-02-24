import 'package:flutter/material.dart';
import 'package:social_demo/src/styles/colors.dart';
import 'package:social_demo/src/styles/themes.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double width;

  RoundedButton({this.width, this.text});

  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(width: width, height: 36.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(24.0)
          )
        ),
        color: colors.secondary,
        elevation: 0,
        child: Text(
          text,
          style: defaultTheme.textTheme.headline6.copyWith(
            color: colors.white
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}