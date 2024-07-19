import 'package:flutter/material.dart';
// import 'package:responsividade/orientacao.dart';
import 'package:responsividade/regras_layout.dart';
// import 'package:responsividade/responsividade_wrap.dart';
// import 'package:responsividade/responsive.dart';
// import 'package:responsividade/responsividade_row_column.dart';

void main() {
  runApp(const MaterialApp(
     title: 'Flutter web',
    debugShowCheckedModeBanner: false,
    // home: ResponsividadeMediaQuery(),
    // home: ResponsividadeWrap(),
    //  home: Orientacao(),
      home: RegrasLayouts(),
  ));
}

