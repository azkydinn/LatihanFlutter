import 'package:flutter/material.dart';
import 'package:learn_api/post_result_model.dart';
import 'package:learn_api/user_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult;
  User user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Learn API"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Text((postResult != null)
            //     ? postResult.id +
            //         " | " +
            //         postResult.name +
            //         " | " +
            //         postResult.job +
            //         " | " +
            //         postResult.createdAt
            //     : "Tidak ada data"),

            Text((user != null)
                ? user.id + " | " + user.name
                : "Tidak ada data"),
            RaisedButton(
                onPressed: () {
                  // PostResult.connectToAPI("Rasyad", "Dokter").then((value) {
                  //   postResult = value;
                  //   setState(() {});
                  // });
                  User.connectToAPI("3").then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("Get"))
          ],
        ),
      ),
    ));
  }
}
