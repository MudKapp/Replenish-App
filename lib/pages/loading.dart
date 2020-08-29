import 'dart:math';

import 'package:flutter/material.dart';
import 'package:replenish_app/services/data.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{
    Data instance = Data();
    List dataList = await instance.getData();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'dataList': dataList
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 50.0,
          )
      ),
    );
  }
}
