import 'package:flutter/material.dart';
import 'package:learn_navigator/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Main Page"),),
      body: Center(
        child: RaisedButton(
          child: Text("Go to Second Page"),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}