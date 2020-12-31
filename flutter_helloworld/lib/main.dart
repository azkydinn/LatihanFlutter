import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget { // Ini latihan Flutter BWA part 1
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Hello World"),
//         ),
//         body: Center(
//           child: Container(
//             color: Colors.lightBlue,
//             width: 150.0,
//             height: 150.0,
//             child: Text(
//               "Haii, nama saya Muhammad Alimur Rasyad umur 2 tahun",
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic, fontWeight: FontWeight.w500, fontSize: 20),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  // Ini latihan Flutter BWA part 2
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
            color: Colors.lightBlue[50],
            margin: EdgeInsets.fromLTRB(
                20, 10, 20, 10), //untuk custom LTRB = Left. Top. Right, Buttom
            padding: EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                    Colors.lightBlue[300],
                    Colors.lightBlue[50],
                  ])),
              margin: EdgeInsets.all(10),
              //setting all, kalo margin diganti padding juga sama
            )),
      ),
    );
  }
}
