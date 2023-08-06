import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
