import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_demo/src/screens/profile/carousel.dart';
import 'package:social_demo/src/screens/profile/custom_app_bar.dart';
import 'package:social_demo/src/screens/profile/post.dart';
import 'package:social_demo/src/screens/profile/rounded_button.dart';
import 'package:social_demo/src/styles/colors.dart';
import 'package:social_demo/src/styles/themes.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    final hPadding = 24;
    final maxWidth = screenWidth - (hPadding*2);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 260,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                carousel([
                  'assets/images/post-img-1.jpg',
                  'assets/images/post-img-2.jpg'
                ], height: 240),
                icons(),
                CustomAppBar(),
              ]
            )
          ),
          profileDetail(maxWidth),
          SizedBox(height: 24),
          posts(maxWidth)
        ],
      ),
    );
  }

  Widget carousel(List<String> images, {double height}) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(24.0)
      ),
      child: Carousel(
        images: images,
        height: height
      )
    );
  }

  Widget icons() {
    return Positioned(
      right: 24,
      bottom: 0,
      child: Row(
        children: <Widget>[
          FloatingActionButton(
            mini: true,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.edit,
              color: colors.secondary,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget profileDetail(double maxWidth) {//width needed for buttons
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Company Name',
            style: defaultTheme.textTheme.headline3.copyWith(
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            'Addis Ababa, Ethiopia',
            style: defaultTheme.textTheme.bodyText2,
          ),
          SizedBox(height: 12.0),
          Text(
            'Description of some sorts. We have been here since 1995.',
            style: defaultTheme.textTheme.bodyText1,
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RoundedButton(
                width: (maxWidth/2) - 12,
                text: 'Email'
              ),
              RoundedButton(
                width: (maxWidth/2) - 12,
                text: 'Call'
              ),
            ]
          ),
        ],
      ),
    );
  }

  Widget posts(double maxWidth) {//width needed for buttons
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 12
      ),
      decoration: BoxDecoration(
        color: colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24)
        )
      ),
      child: Column(
        children: <Widget>[  
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                width: (maxWidth/2),
                child: Text(
                  'Your Posts',
                  textAlign: TextAlign.center,
                  style: defaultTheme.textTheme.bodyText1.copyWith(
                    color: colors.primary,
                    fontWeight: FontWeight.bold
                  )
                )
              ),
              SizedBox(
                width: (maxWidth/2),
                child: Text(
                  'Saved Posts',
                  textAlign: TextAlign.center,
                  style: defaultTheme.textTheme.bodyText1
                )
              )
            ]
          ),
          SizedBox(height: 8),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            padding: EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            physics: ScrollPhysics(),
            children: <Widget>[
              PostMini(img: 'assets/images/post-img-1.jpg',),
              PostMini(img: 'assets/images/post-img-2.jpg',),
              PostMini(img: 'assets/images/post-img-2.jpg',),
              PostMini(img: 'assets/images/post-img-1.jpg',),
              PostMini(img: 'assets/images/post-img-2.jpg',),
              PostMini(img: 'assets/images/post-img-2.jpg',),
              PostMini(img: 'assets/images/post-img-1.jpg',),
              PostMini(img: 'assets/images/post-img-2.jpg',),
            ],
          ),
        ],
      )
    );
  }
}