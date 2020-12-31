import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn Stack and Align"),
        ),
        body: Stack(
          children: <Widget>[
            //BG
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ))
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: Row(children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ))
                  ]),
                )
              ],
            ),
            //text
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 50))),
                    Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 50))),
                    Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 50))),
                    Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 50))),
                    Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 50)))
                  ],
                )
              ],
            ),
            //button
            Align(
              alignment: Alignment(0,0.8),
              child: RaisedButton(
                  child: Text("My Button"),
                  color: Colors.amber,
                  onPressed: (){}),
            )
          ],
        ),
      ),
    );
  }
}
