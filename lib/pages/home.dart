import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map args = {};

  @override
  Widget build(BuildContext context) {

    args = args.isNotEmpty ? args : ModalRoute.of(context).settings.arguments;
    List dataList = args['dataList'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Replenish'),
        automaticallyImplyLeading: false,
        centerTitle: true
      ),
      body: ListView.builder(itemCount: dataList.length,itemBuilder: (context,index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
          child: Card(
            child: ListTile(
              title: Text('Day: ${dataList[index]['day']}'),
              subtitle: Text('${dataList[index]['title']}'),
              onTap: () {Navigator.pushNamed(context, '/day',arguments: {"data":dataList[index]});},
            )
          ),
        );
      }
      )
    );
  }
}




