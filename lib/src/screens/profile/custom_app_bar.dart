import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_demo/src/styles/colors.dart';

class CustomAppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    
    return Container(
      height: 56.0,
      margin: EdgeInsets.only(top: padding.top),
      padding: EdgeInsets.only(
        left: 8,
        right: 24
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.arrowLeft,
              color: colors.primary,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CircleAvatar(
            radius: 24,
            backgroundColor: colors.primary,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/post-img-2.jpg'),
            ),
          ),
        ],
      )
    );
  }
}