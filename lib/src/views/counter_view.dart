import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  @override
  createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final _textStyle = new TextStyle(fontSize: 25.0);

  int _counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Título'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Number of taps :', style: _textStyle),
              Text('$_counter', style: _textStyle)
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _minus),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add)
      ],
    );
  }

  void _add() => setState(() => _counter++);
  void _minus() => setState(() => _counter--);
  void _reset() => setState(() => _counter = 0);
}
