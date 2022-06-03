import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_mobile/Ajuda.dart';
import 'package:menu_mobile/java.dart';
import 'package:menu_mobile/main.dart';
import 'package:menu_mobile/php.dart';

class Menu extends StatelessWidget {
  const Menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            cabecalho(nome: "Matheus", email: "matheusgatao@gmail.com", imagem: ""),
            menuItem(texto: "Java", icone: Icons.access_alarm_sharp, 
            clique: ()=> intemSelecionado(context, 1)),
            
            menuItem(texto: "PHP", icone: Icons.ac_unit, 
            clique: ()=> intemSelecionado(context, 2)),

            menuItem(texto: "Ajuda", icone: Icons.help, 
            clique: ()=> intemSelecionado(context, 3)),
            
          ],


        ),
      ),
    );
  }
  /* Responsável pelo menu do site*/ 
  Widget menuItem({
   required String texto,
   required IconData icone,
   VoidCallback? clique
  }){
    return ListTile(
      leading: Icon(icone,color: Colors.limeAccent,),
      title: Text(texto,style: TextStyle(color: Colors.white),),
      hoverColor: Colors.white,
      onTap: clique,
    );
  }
  void intemSelecionado(BuildContext context, int indicador){
    Navigator.of(context).pop();

    if(indicador==1){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Java()));
    } else if (indicador==2){
      Navigator.of (context).push(MaterialPageRoute(builder: (context) => Php()));    
    } else if (indicador==2){
      Navigator.of (context).push(MaterialPageRoute(builder: (context) => Ajuda()));
    } else if (indicador==2){
      Navigator.of (context).push(MaterialPageRoute(builder: (context) => MyApp()));
    }
  }

cabecalho({
required String nome,
required String email,
required String imagem,
VoidCallback? clique
})=> InkWell(
  onTap: clique,
  child: Row(
    children:[
      CircleAvatar(radius: 30, backgroundImage: NetworkImage (imagem),),
      Column(
        children: [
          Text(
            nome, 
          style: TextStyle(fontSize: 10, color: Colors.white),
          ),
          Text(email,
          style: TextStyle(fontSize: 10, color: Colors.white),
          ),
      
        ],
      )
    ],
   ),
);

}