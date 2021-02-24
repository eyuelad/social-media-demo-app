import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_demo/src/screens/feed/feed_post_card.dart';
import 'package:social_demo/src/screens/feed/post.dart';
import 'package:social_demo/src/styles/colors.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double padding = 12;
    double maxWidth = deviceWidth - (padding*2);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(
              Icons.android,
              color: colors.primary,
            ),
            SizedBox(width: 8),
            Text(
              'FEED',
            ),
          ],
        )
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: padding
        ),
        children: <Widget>[
          FeedPostCard(
            post: Post(
              avatarUrl: 'assets/images/post-img-1.jpg',
              userName: '@_username_',
              imgUrl: 'assets/images/post-img-2.jpg'
            ),
          ),
          FeedPostCard(
            post: Post(
              avatarUrl: 'assets/images/post-img-2.jpg',
              userName: '@another.user',
              imgUrl: 'assets/images/post-img-1.jpg'
            ),
          )
        ],
      ),
    );
  }
}