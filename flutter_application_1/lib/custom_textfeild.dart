// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final String hint;
  const customTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        label: Text(label),
        hint: Text(hint),
      ),
    );
  }
}
