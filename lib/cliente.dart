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
        title: Center(child: Text("Cadastro Retirada Pet")),
      ),
      body: 
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children:[
            Text( 'Preencha os dados abaixo', style: TextStyle(fontSize: 20),),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome do Responsável',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome do Pet',
              ),
            ),
             TextField(
              decoration: InputDecoration(
                labelText: 'Endereço de retirada',
              ),
            ),
             TextField(
              decoration: InputDecoration(
                labelText: 'CEP',
              ),
            ),
             TextField(
              decoration: InputDecoration(
                labelText: 'Número',
              ),
            ),
             TextField(
              decoration: InputDecoration(
                labelText: 'Complemento',
              ),
            ),

            ElevatedButton(onPressed:() {}, child: Text('Enviar')),

          ],
      ),
        ),
    );
  }
}
