

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_mobile/novomenu.dart';//importar a main

class Ajuda extends StatelessWidget {
  const Ajuda ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NovoMenu(),
      appBar: AppBar(title: Text("Ajuda"),),
      body: Container(child: Text("Ajuda"),),
      );
  }
}