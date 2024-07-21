import 'package:flutter/material.dart';
import 'package:responsividade/item_produtos.dart';
import 'package:responsividade/widget/mobile_app_bar.dart';
import 'package:responsividade/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVusualizacao(double larguraTela) {
    int colunas = 2;
    if (larguraTela < 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var largura = constraints.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVusualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ItemProduto("kit multimidia", "2,500,00", 'p1.jpg'),
                ItemProduto("Pneu", "2,500,00", 'p2.jpg'),
                ItemProduto("Celular samsung", "2,500,00", 'p3.jpg'),
                ItemProduto("iphone 13", "2,500,00", 'p4.jpg'),
                ItemProduto("Celular samsung galaxy", "2,500,00", 'p5.jpg'),
                ItemProduto("iphone 12", "2,500,00", 'p6.jpg'),
                ItemProduto("kit multimidia", "2,500,00", 'p1.jpg'),
                ItemProduto("Pneu", "2,500,00", 'p2.jpg'),
                ItemProduto("Celular samsung", "2,500,00", 'p3.jpg'),
                ItemProduto("iphone 13", "2,500,00", 'p4.jpg'),
                ItemProduto("Celular samsung galaxy", "2,500,00", 'p5.jpg'),
                ItemProduto("iphone 12", "2,500,00", 'p6.jpg'),
              ],
            ),
          ),
        );
      },
    );
  }
}
