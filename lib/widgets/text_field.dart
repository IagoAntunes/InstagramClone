import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  TextFieldInput({
    super.key,
    this.isPass = false,
    required this.textInputType,
    required this.controller,
    required this.hintText,
  });
  TextEditingController controller = TextEditingController();
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    final InputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder,
          focusedBorder: InputBorder,
          enabledBorder: InputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      keyboardType: textInputType,
    );
  }
}
