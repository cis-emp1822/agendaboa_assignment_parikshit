import 'package:flutter/material.dart';

class Counter1Screen extends StatelessWidget {
  const Counter1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '1',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
