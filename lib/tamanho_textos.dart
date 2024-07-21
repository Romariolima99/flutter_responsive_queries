import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({super.key});

  @override
  State<TamanhoTextos> createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tamanho de textos'),
      ),
      body: const Column(
        children: [
          Text(
            "lorem is not just a normal snippet—it's actually a generator. Every time you expand it, it will generate a 30-words dummy text, "
            "splitted into a few sentences.",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 50),
          AutoSizeText(
            "lorem is not just a normal snippet—it's actually a generator. Every time you expand it, it will generate a 30-words dummy text, "
            "splitted into a few sentences.",
            style: TextStyle(fontSize: 18),
            // maxLines: 2,
            // minFontSize: 14,
            // overflow: TextOverflow.ellipsis,
            // overflowReplacement: Text("Continua"),

            // minFontSize: 10,
            // maxLines: 2,
            // stepGranularity: 10,

            maxLines: 3,
            presetFontSizes: [30 , 22 , 10],


            
          ),
        ],
      ),
    );
  }
}
