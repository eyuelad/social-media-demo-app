import 'package:flutter/widgets.dart';

class Post {
  final String imgUrl;
  final String userName;
  final String avatarUrl;

  Post({@required this.avatarUrl, @required this.userName, @required this.imgUrl});
}