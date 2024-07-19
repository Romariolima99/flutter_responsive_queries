import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({super.key});

  @override
  _OrientacaoState createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientação'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          // return Container(
          //   alignment: Alignment.center,
          //   child: orientation == Orientation.portrait
          //     ? Text('Portrait')
          //     : Text('Landscape'),
          // );
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4, 
            children: [
           Container(color: Colors.red,),
            Container(color: Colors.blue,),
             Container(color: Colors.green,),
              Container(color: Colors.purple,),
               Container(color: Colors.yellow,),
                Container(color: Colors.pink,),
            ],
            );
        },
      ),
    );
  }
}
