import 'package:flutter/material.dart';
import 'package:flutter_training/static_string.dart';

class FirstTR1 extends StatelessWidget {
  const FirstTR1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(appTitle)),
        ),
        body: Container(
          height: 200,
          color: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("First name"),
                Text("Middle name"),
                Text("Last name"),
                ElevatedButton(onPressed: () {}, child: Text("Submit")),
                Row(
                  children: const [
                    Text("First name"),
                    Text("Middle name"),
                    Expanded(
                        child: Align(alignment: Alignment.centerRight, child: Text("Last name"))),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          extendedPadding: EdgeInsets.all(8.0),
          onPressed: () {},
          backgroundColor: Colors.black,
          icon: const Icon(
            Icons.add,
            size: 40.0,
            color: Colors.amber,
          ),
          label: Text("plust"),
        ),
      ),
    );
  }
}
