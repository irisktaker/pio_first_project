import 'package:flutter/material.dart';

class SimpleMathMethods extends StatefulWidget {
  const SimpleMathMethods({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SimpleMathMethods> createState() => _SimpleMathMethodsState();
}

class _SimpleMathMethodsState extends State<SimpleMathMethods> {
  // int _counter = 0;
  int _incCounter = 0;
  int _decCounter = 100;
  int _multiCounter = 1;
  int _divCounter = 1000;
  int _odCounter = 0;
  int _evCounter = 0;

  /// add
  void _incrementCounter() {
    setState(() {
      _incCounter++;
    });
  }

  /// minus
  void _decrementCounter() {
    setState(() {
      _decCounter--;
    });
  }

  /// multi
  void _multipleCounter() {
    setState(() {
      _multiCounter *= 2;
    });
  }

  /// div
  void _dividerCounter() {
    setState(() {
      // _divCounter ~/= _multiCounter;
      _divCounter ~/= 2;
    });
  }

  /// odd
  void _oddCounter() {
    setState(() {
      _odCounter % 2 == 0 ? _odCounter++ : _odCounter += 2;
    });
  }

  /// even
  void _evenCounter() {
    setState(() {
      _evCounter % 2 != 0 ? _evCounter++ : _evCounter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              Text(
                '_______ Play with buttons _______',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 24),
              buildText(text: 'Counter Increment: $_incCounter'),
              buildText(text: 'Counter Decrement: $_decCounter'),
              const Divider(),
              buildText(text: 'Counter Multiplication: $_multiCounter'),
              buildText(text: 'Counter Divider: $_divCounter'),
              const Divider(),
              buildText(text: 'Counter Odd: $_odCounter'),
              buildText(text: 'Counter Even: $_evCounter'),
              const Divider(),
              const Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildFloatBtn(
                  press: _incrementCounter, icon: const Icon(Icons.add)),
              const SizedBox(height: 16),
              buildFloatBtn(
                  press: _decrementCounter, icon: const Icon(Icons.remove)),
            ],
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildFloatBtn(
                  press: _multipleCounter,
                  icon: const Icon(Icons.highlight_off)),
              const SizedBox(height: 16),
              buildFloatBtn(
                press: _dividerCounter,
                icon: Image.asset(
                  'assets/icons/icons8-divide-50.png',
                  fit: BoxFit.cover,
                  width: 30,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildFloatBtn(press: _oddCounter, icon: const Text('Odd')),
              const SizedBox(height: 16),
              buildFloatBtn(press: _evenCounter, icon: const Text('Even')),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }

  FloatingActionButton buildFloatBtn({
    required void Function()? press,
    Widget? icon,
  }) {
    return FloatingActionButton(
      onPressed: press,
      tooltip: 'Increment',
      child: icon,
    );
  }

  Widget buildText({String? text}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        text!,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
