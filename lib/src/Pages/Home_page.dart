import 'package:componenetes/Providers/menu_providers.dart';
import 'package:componenetes/src/Pages/alert_page.dart';
import 'package:componenetes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Componentes")),
      body: _lista(),
    );
  }

  Widget _lista() {
    /*menuProvider.cargarData().then((value) {
      print("la lista aqui");
      print(value);
    });
    
    return ListView(
      children: _listaItems(),
    );*/
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('builder');
        print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((element) {
      final widgetTEmp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          /*final route = MaterialPageRoute(
            builder: (context) {
              return AlertPage();
            },
          );

          Navigator.push(context, route);*/
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opciones..add(widgetTEmp)..add(Divider());
    });
    return opciones;
  }
}
