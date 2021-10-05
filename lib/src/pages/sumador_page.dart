import 'package:flutter/material.dart';

class SumadorPage extends StatefulWidget {
  @override
  createState() {
    return SumadorPageState();
  }
}

class SumadorPageState extends State<SumadorPage> {
  //Variables
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();
  int ele1 = 0, ele2 = 0;
  int result = 0;

  TextStyle style_default = new TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sumadores Topicos'),
      ),
      body: Center(
        child: _textInput(),
      ),
    );
  }

  // Metodos
  Widget _textInput() {
    return Column(children: [
      Text('Elemtent1'),
      TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'ingrese una valor numerico'),
        keyboardType: TextInputType.number,
        controller: controller1,
      ),
      Text('Element2'),
      TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'ingrese una valor numerico'),
        keyboardType: TextInputType.number,
        controller: controller2,
      ),
      Text('$result', style: style_default),
      // botones
      _botones()
    ]);
  }

  Widget _botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
            onPressed: _sumar,
            child: Text('Sumar'),
            disabledColor: Colors.blue),
        RaisedButton(
            onPressed: _resetear,
            child: Text('Resetear'),
            disabledColor: Colors.blue),
      ],
    );
  }

  void _sumar() {
    setState(() {
      ele1 = int.parse(controller1.text);
      ele2 = int.parse(controller2.text);
      result = ele1 + ele2;
    });
  }

  void _resetear() {
    setState(() {
      result = 0;
    });
  }
}
