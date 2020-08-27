import 'package:flutter/material.dart';
import 'package:replenish_app/pages/challenge.dart';
import 'package:replenish_app/pages/comment.dart';
import 'package:replenish_app/pages/home.dart';
import 'package:replenish_app/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/challenge': (context) => Challenge(),
      '/comments': (context) => Comment()
    },
  ));
}
