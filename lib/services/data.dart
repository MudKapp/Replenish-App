import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
class Data{
  String dbName = DotEnv().env['DB_NAME'];
  String dbPass = DotEnv().env['PASSWORD'];

  Future<List> getData() async {
    try{
      var db = await Db.create("mongodb+srv://user1:$dbPass@cluster0.6t0xf.mongodb.net/$dbName?retryWrites=true&w=majority");
      await db.open();
      var coll = db.collection('app-data');
      List data = await coll.find().toList();
      return data;
    }catch(err){
      print(err);
    }
  }
}