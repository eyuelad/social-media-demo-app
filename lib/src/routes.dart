import 'package:flutter/material.dart';
import 'package:social_demo/src/screens/feed/feed.dart';
import 'package:social_demo/src/screens/login/login.dart';
import 'package:social_demo/src/screens/profile/profile.dart';

class Routes {
  static const String home = '/';
  static const String login = '/login';
  static const String feed = '/feed';
  static const String profile = '/profile';
}

Route routes(RouteSettings settings) {
  final Map<String, dynamic> args = settings.arguments;

  switch (settings.name) {
    case Routes.home:
      return MaterialPageRoute(
        builder: (context) {
          return Login();
        }
      );
      break;
    case Routes.login:
      return MaterialPageRoute(
        builder: (context) {
          return Login();
        }
      );
      break;
    case Routes.feed:
      return MaterialPageRoute(
        builder: (context) {
          return Feed();
        }
      );
      break;
    case Routes.profile:
      return MaterialPageRoute(
        builder: (context) {
          return Profile();
        }
      );
      break;
    default:
  }
}