import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_demo/src/routes.dart';
import 'package:social_demo/src/screens/login/login_form.dart';
import 'package:social_demo/src/styles/colors.dart';
import 'package:social_demo/src/styles/themes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double bottomMargin = 24;

  void initState() {
    super.initState();
  }
  
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double maxWidth = deviceWidth - 48;

    print(screenHeight);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'LOGIN',
        ),
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 180,
                child: Center(
                  child: Text(
                    'LOGO',
                    textAlign: TextAlign.center,
                    style: defaultTheme.textTheme.headline1
                  ),
                )
              )
            ),
            Positioned(
              bottom: 0,
              width: deviceWidth,
              child: Container(
                padding: EdgeInsets.fromLTRB(24,48,24,bottomMargin),
                color: colors.white,
                child: Column(
                  children: <Widget>[
                    loginWith(),
                    SizedBox(height: 48),
                    LoginForm(),
                    SizedBox(height: 12),
                    separator(maxWidth),
                    SizedBox(height: 12),
                    reigisterButton()
                  ]
                )
              )
            )
          ],
        )
      )
    );
  }

  Widget loginWith() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'LOGIN WITH',
          style: defaultTheme.textTheme.headline6
        ),
        OutlineButton(
          padding: EdgeInsets.all(12),
          borderSide: BorderSide(
            color: colors.facebook
          ),
          child: Icon(
            FontAwesomeIcons.facebookF,
            color: colors.facebook,
            size: 36,
          ),
          shape: CircleBorder(),
          onPressed: () {}
        ),
        OutlineButton(
          padding: EdgeInsets.all(12),
          borderSide: BorderSide(
            color: colors.google
          ),
          child: Icon(
            FontAwesomeIcons.google,
            color: colors.google,
            size: 36,
          ),
          shape: CircleBorder(
            side: BorderSide(
              color: colors.facebook
            )
          ),
          onPressed: () {}
        ),
        Text(
          'LOGIN WITH',
          style: defaultTheme.textTheme.headline6
        ),
      ],
    );
  }

  Widget separator(maxWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: maxWidth/2 - 24,
          height: 1,
          color: colors.grayLight
        ),
        Text(
          'OR', 
          style: defaultTheme.textTheme.bodyText2,
        ),
        Container(
          width: maxWidth/2 - 24,
          height: 1,
          color: colors.grayLight
        ),
      ],
    );
  }

  Widget reigisterButton() {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: RaisedButton(
        onPressed: () {},
        color: colors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Container(
          child: Text(
            'CREATE ACCOUNT',
            style: defaultTheme.textTheme.button
          ),
        )
      )
    );
  }
}