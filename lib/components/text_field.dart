import 'package:flutter/material.dart';

class DemoTextField extends StatelessWidget {
  final hinttext;
  final obscureText;

  const DemoTextField(
      {super.key, required this.hinttext, required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: hinttext,
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white10)),
            fillColor: Colors.grey.shade200,
            filled: true),
      ),
    );
  }
}
