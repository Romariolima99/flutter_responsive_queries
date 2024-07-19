import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ResponsividadeWrapState createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {
    double altura = 100;
    double largura = 200;

    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center, //defina o alinhamento dos itens de acordo com sua necessidade
          spacing: 10, //define um espaçamento entre os itens
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.black,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.blue,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
