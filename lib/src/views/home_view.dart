import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final textStyle = new TextStyle(fontSize: 25.0);

  final counter = 10;

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
            Text('Number of taps :', style: textStyle),
            Text('$counter', style: textStyle)
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
    );
  }
}
