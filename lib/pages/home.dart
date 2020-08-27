import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.yellow[200],Colors.yellow[700]]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text(
                  "Happiness Challenge: Day 19",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                          'Friday',
                          style: TextStyle(

                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('Feeling gratitude and not expressing it is like wrapping a present and not giving it. Who are you grateful for? Tell them. Taking time to remember and then letting them know will fill two hearts- theirs and yours.'),
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
                        onPressed: () {},
                        splashRadius: 25,
                      )
                    ),
                  ],
                )
                ],
            ),
          ),
        )
      ),
    );
  }
}
