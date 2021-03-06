import 'package:flutter/material.dart';
import 'package:menu_mobile/contato.dart';
import 'package:menu_mobile/cliente.dart';
import 'package:menu_mobile/main.dart';

class NovoMenu extends StatelessWidget {
  const NovoMenu({Key? key}) : super(key: key);

  get Principal => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            menuItem(
                texto: "Menu Principal",
                icone: Icons.house,
                clique: () => itemSelecionado(context, 0)),
            menuItem(
              texto: "Cadastro Cliente",
              icone: Icons.people,
              clique: () => itemSelecionado(context, 1),
            ),
            menuItem(
                texto: "Contato",
                icone: Icons.smartphone,
                clique: () => itemSelecionado(context, 2)),
          ],
        ),
      ),
    );
  }

  Widget menuItem({
    required String texto,
    required IconData icone,
    VoidCallback? clique,
  }) {
    final cor = Colors.black54;
    final corselecao = Colors.white38;
    return ListTile(
      leading: Icon(icone, color: Colors.blue),
      title: Text(texto, style: TextStyle(color: cor)),
      hoverColor: corselecao,
      onTap: clique,
    );
  }

  void itemSelecionado(BuildContext context, int i) {
    Navigator.of(context).pop();
    if (i == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyApp()));
    } else if (i == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Cliente()));
    } else if (i == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Contato()));
    } else if (i == 3) {}
  }
}
