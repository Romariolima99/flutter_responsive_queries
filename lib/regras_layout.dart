import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class RegrasLayouts extends StatefulWidget {
  const RegrasLayouts({super.key});

  @override
  State<RegrasLayouts> createState() => _RegrasLayoutsState();
}

class _RegrasLayoutsState extends State<RegrasLayouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // width: 300,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var largura = constraints.maxWidth;
            print("largura $largura");

            if (largura < 600) {
              return const Text("Celulares"); // celular
            } else if (largura < 960) {
              return const Text("Celulares e tablets"); // celulares maiores e tablets
            } else {
              return const Text("Telas maiores"); //Telas maiores
            }

            // return Container(
            //   child: Text('Romário Lima'),
            // );
          },
        ),
      ),
    );
  }
}
