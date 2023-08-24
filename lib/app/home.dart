import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.nome});

  final String title;
  final String nome;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String soma = '0';
  final _number1 = TextEditingController();
  final _number2 = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void somaNumbers() {
    double? value1 = double.tryParse(_number1.text) ?? 0.0;
    double? value2 = double.tryParse( _number2.text) ?? 0.0;
    setState(() {
      soma = (value1+value2).toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.nome),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextFormField(
              controller: _number1,
              keyboardType: TextInputType.number,
            ),

            TextFormField(
              controller: _number2,
              keyboardType: TextInputType.number,
            ),

            TextButton(
              onPressed: () {
                  somaNumbers();
              },
              child: Text('soma'),
            ),

             Text(
              '$soma',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.access_alarm),
      ),
    );
  }
}