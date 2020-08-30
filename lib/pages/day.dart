import 'package:flutter/material.dart';

class Day extends StatefulWidget {
  @override
  _DayState createState() => _DayState();
}


class _DayState extends State<Day> {
  Map args = {};


  @override
  Widget build(BuildContext context) {
    args = args.isNotEmpty ? args : ModalRoute.of(context).settings.arguments;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.yellow[200],Colors.yellow[700]]
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("${args['data']['title']}: Day ${args['data']['day']}"),
        ),
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/test.png',
                        width: 300,
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey[100]
                      ),
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '${args['data']['week_day']}',
                              style: TextStyle(

                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('${args['data']['message']}'),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: () {},
                            color: Colors.blue,
                            child: Text(
                              "Today's Challenge",
                              style: TextStyle(
                                  color: Colors.grey[100]
                              ),
                            )
                        ),
                        SizedBox(width: 10,),
                        Ink(
                            decoration: const ShapeDecoration(
                              color: Color(0xff300046),
                              shape: CircleBorder(),
                            ),
                            child: IconButton(
                              icon: Icon(Icons.message),
                              color: Colors.white,
                              onPressed: () {Navigator.pushNamed(context, '/comments',arguments: {"data":args['data']});},
                              splashRadius: 25,
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
