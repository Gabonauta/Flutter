import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final opciones = ["uno", "dos", "tres", "cuatro"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List();
    for (var opc in opciones) {
      final parse = ListTile(title: Text(opc));
      lista
        ..add(parse)
        //lista.add(Divider(color: Colors.brown,));
        //los dos puntos hace que regrese al operador original es decir lista
        ..add(Divider(
          color: Colors.brown,
        ));
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text(item),
            subtitle: Text("Aqui la una descripcion"),
            trailing: Icon(Icons.add),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
