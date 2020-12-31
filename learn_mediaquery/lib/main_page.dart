import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Media Query"),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
              children: generateContainers())
            : Row(
                children: generateContainers(),
              ),
        // Container(
        //     width: MediaQuery.of(context).size.width / 3, //mengambil 1/3 dari lebar layar sebagai width
        //     height: MediaQuery.of(context).size.height / 2, //mengambil 1/2 dari panjang layar sebagai height
        //     color: Colors.red)

        );
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    ];
  }
}
