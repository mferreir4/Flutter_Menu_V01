
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'novomenu.dart';

class  Principal extends StatelessWidget {
  const Principal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NovoMenu(),
      appBar: AppBar(title: Text("Cliente"),),
      body: Container(child: Text("Você que é cliente aqui no mercadinho do ze pequeno, tem descontos especiais 'My Friend'. Já te passo a dica maluco"),),
      );
  }
}