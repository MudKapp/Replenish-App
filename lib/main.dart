import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:replenish_app/pages/challenge.dart';
import 'package:replenish_app/pages/comment.dart';
import 'package:replenish_app/pages/day.dart';
import 'package:replenish_app/pages/home.dart';
import 'package:replenish_app/pages/loading.dart';

Future main() async {
  await DotEnv().load('.env');
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/day': (context) => Day(),
      '/challenge': (context) => Challenge(),
      '/comments': (context) => Comment()
    },
  ));
}