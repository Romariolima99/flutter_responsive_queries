import 'package:flutter/material.dart';

class DiferentesTamanhos extends StatefulWidget {
  const DiferentesTamanhos({super.key});

  @override
  State<DiferentesTamanhos> createState() => _DiferentesTamanhosState();
}

class _DiferentesTamanhosState extends State<DiferentesTamanhos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Define a cor de fundo do AppBar como azul
        title: const Text('Diferentes tamanhos'),
      ),
      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 200,
            color: Colors.orange,
            child: const Text("Item 1"),
          ),
          Container(
            width: 200,
            color: Colors.blue,
            child: const Text(
              "Item 2 lorem is not just a normal snippet—it's actually a generator. Every time you expand it, it will generate a 30-words dummy text, "
              "splitted into a few sentences.",
            ),
          ),
        ],
      ),
      ),
    );
  }
}
