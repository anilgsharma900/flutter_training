import 'package:flutter/material.dart';

/// Created by Anil Sharma on 21/01/23.
class SecondTrInputWidget extends StatefulWidget {
  const SecondTrInputWidget({Key? key}) : super(key: key);

  @override
  State<SecondTrInputWidget> createState() => _SecondTrInputWidgetState();
}

class _SecondTrInputWidgetState extends State<SecondTrInputWidget> {
  TextEditingController _textControllerUserName = TextEditingController();
  TextEditingController _textControllerMobile = TextEditingController();
  GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _textControllerUserName,
                decoration: const InputDecoration(
                    labelText: "Enter username",
                    hintText: "Enter username",
                    icon: Icon(Icons.verified_user)),
              ),
              TextField(
                controller: _textControllerMobile,
                decoration: const InputDecoration(
                  labelText: "Enter mobile",
                  hintText: "Enter mobile",
                ),
                keyboardType: TextInputType.number,
                obscureText: true,
                // onTap: (){
                //   getValues();
                //
                // },
              ),
              Form(
                key: _key,
                child: TextFormField(
                  onSaved: (value) {
                    print("values: $value");
                  },
                  validator: (String? value) {
                    return value == null ? "Please enter value" : null;
                  },
                  decoration: const InputDecoration(
                    labelText: "Enter password",
                    hintText: "Enter password",
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    getValues();
                  },
                  child: Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }

  void getValues() {
    if (!_key.currentState!.validate()) {
      return;
    }
    if (_textControllerUserName.value.text.isEmpty || _textControllerMobile.value.text.isEmpty) {
      return;
    }

    FocusScope.of(context).unfocus(); // set unfocus
    print("values: ${_textControllerUserName.value.text}");
  }
}
