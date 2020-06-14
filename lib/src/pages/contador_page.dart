import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _styleText = new TextStyle(fontSize: 30);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SUPER CONTADOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Número de taps:',
              style: _styleText,
            ),
            Text('$_contador', style: _styleText),
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: substract),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: reset),
        SizedBox(width: 95.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: add),
      ],
    );
  }

  void add() {
    setState(() => _contador++);
  }

  void substract() {
    setState(() => _contador--);
  }

  void reset() {
    setState(() => _contador = 0);
  }
}
