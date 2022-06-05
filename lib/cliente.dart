import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_mobile/novomenu.dart'; //importar a main

class Cliente extends StatelessWidget {
  const Cliente({Key? key}) : super(key: key);

  
  /* O menu principal esta chamando essa página */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NovoMenu(),
      appBar: AppBar(
        title: Text("Cliente"),
      ),
      body: Container(
        child: Text( "Essa parte será responsável pelo cadastro do cliente através de um formulário"),
      ),
    );
  }
}
