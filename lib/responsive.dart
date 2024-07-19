import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ResponsividadeMediaQueryState createState() =>
      _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    // var larguraItem = largura *0.25; //100%
    var larguraItem = largura / 3; //100%

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade'),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.red,
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
