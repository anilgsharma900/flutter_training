import 'package:flutter/material.dart';
import 'package:flutter_training/static_string.dart';

class FirstTR1 extends StatelessWidget {
  const FirstTR1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // all ui part in the build method in the flutter
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.add,
            size: 40.0,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
