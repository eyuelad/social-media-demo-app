import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_demo/src/routes.dart';
import 'package:social_demo/src/styles/colors.dart';
import 'package:social_demo/src/styles/themes.dart';

class LoginForm extends StatefulWidget {
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8)
              ),
              borderSide: BorderSide(
                color: colors.primary
              )
            ),
            hintText: 'Email',
            prefixIcon: const Icon(
              FontAwesomeIcons.envelope,
            ),
            prefixText: ' ',
          )
        ),
        SizedBox(height: 24),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8)
              ),
              borderSide: BorderSide(
                color: colors.primary
              )
            ),
            hintText: 'Password',
            prefixIcon: const Icon(
              FontAwesomeIcons.lock,
            ),
            prefixText: ' ',
          ),
        ),
        SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 54,
          child: RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.feed);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Container(
              child: Text(
                'LOGIN',
                style: defaultTheme.textTheme.bodyText1.copyWith(
                  color: colors.white
                )
              ),
            )
          )
        )
      ],
    );
  }
}