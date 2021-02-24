import 'package:flutter/material.dart';
import 'package:social_demo/src/routes.dart';
import 'package:social_demo/src/screens/feed/post.dart';
import 'package:social_demo/src/styles/colors.dart';

class FeedPostCard extends StatefulWidget {
  final Post post;

  FeedPostCard({@required this.post});

  _FeedPostCardState createState() => _FeedPostCardState();
}

class _FeedPostCardState extends State<FeedPostCard> {
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            header(),
            SizedBox(height: 12),
            body(),
            SizedBox(height: 12),
            ...footer()
          ],
        ),
      )
    );
  }

  Widget header() {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: CircleAvatar(
            radius: 24,
            backgroundColor: colors.primary,
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(widget.post.avatarUrl),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, Routes.profile);
          },
        ),
        SizedBox(width: 4),
        Text(
          widget.post.userName
        )
      ],
    );
  }

  Widget body() {
    return Column(
      children: <Widget>[
        Text(
          'The post text goes like this... The quick brown fox jumps over the lazy dog!'
        ),
        SizedBox(height: 8),
        Container(
          child: Image.asset(widget.post.imgUrl),
        )
      ],
    );
  }

  List<Widget> footer() {
    return [
      Row(
        children: <Widget>[
          Icon(
            Icons.thumb_up,
            size: 20,
          ),
          SizedBox(width: 8),
          Icon(
            Icons.share,
            size: 20,
          )
        ],
      ),
      SizedBox(height: 4),
      Text(
        '411'
      )
    ];
  }
}