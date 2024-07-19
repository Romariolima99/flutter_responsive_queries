import 'package:flutter/material.dart';

class ResponsividadeRowCol extends StatefulWidget {
  const ResponsividadeRowCol({super.key});

  @override
  _ResponsividadeRowColState createState() => _ResponsividadeRowColState();
}

class _ResponsividadeRowColState extends State<ResponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade com Row e Column'),
      ),
      body: Column(
        children: [
          // Container(
          //   // width: 100,
          //   height: 200,
          //   color: Colors.red,
          // ),
          Expanded(
            flex: 1,
            child: Container(
              // width: 100,
              height: 200,
              color: Colors.red,
            ),
          ),
           Expanded(
            flex: 1,
            child: Container(
              // width: 100,
              height: 200,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // width: 100,
              height: 200,
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}

// void main() {
//   runApp(const MaterialApp(
//     title: 'Flutter Web',
//     debugShowCheckedModeBanner: false,
//     home: ResponsividadeRowCol(),
//   ));
// }
