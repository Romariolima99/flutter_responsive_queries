import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class TamanhoProporcional extends StatefulWidget {
  const TamanhoProporcional({super.key});

  @override
  State<TamanhoProporcional> createState() => _TamanhoProporcionalState();
}

class _TamanhoProporcionalState extends State<TamanhoProporcional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Define a cor de fundo do AppBar como azul
        title: const Text(
          'Tamanhos Proporcionais'
        ),
      ),
      body: Container(
        color: Colors.orange,
        child: const FractionallySizedBox(
          widthFactor: 0.50,
          heightFactor: 0.50,
          alignment: Alignment.topLeft,
          child: Text("Tamanho proporcional"),
        ),
      ),
    );
  }
}
