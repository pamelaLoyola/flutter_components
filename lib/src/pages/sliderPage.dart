import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 80.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('slider'),
        ),
        body: Column(
          children: [
            _slider(),
            _checkBox(),
            Expanded(child: _imagen()),
          ],
        ));
  }

  Widget _slider() {
    return Slider(
      activeColor: Colors.indigoAccent[300],
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 600.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _checkBox() {
    return CheckboxListTile(
      title: Text('bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _imagen() {
    return Image(
      image: NetworkImage(
          'https://i.picsum.photos/id/1/5616/3744.jpg?hmac=kKHwwU8s46oNettHKwJ24qOlIAsWN9d2TtsXDoCWWsQ'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
