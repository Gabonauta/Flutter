import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(children: <Widget>[
          _crearSlider(),
          Divider(),
          Expanded(child: _crearImagen()),
          Divider(),
          _crearCheckBox(),
          _crearSwitch(),
        ]),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        value: _valorSlider,
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        //divisions: 20,
        min: 10,
        max: 400,
        onChanged: (_bloquearCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/950/public/media/image/2020/01/untitled-goose-game-1855363.jpg?itok=s99qCZ_z'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    /*return Checkbox(
                  value: _bloquearCheck,
                  onChanged: (valor) {
                    setState(() {
                      _bloquearCheck = valor;
                    });
                  });*/
    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear slider'),
        value: _bloquearCheck,
        onChanged: (valor) {
          setState(() {
            _bloquearCheck = valor;
          });
        });
  }
}
