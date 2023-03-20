import '../constants/colors.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.labelText,
    this.isHide = false,
    this.keyboardType = TextInputType.text,
  });

  final String labelText;
  final bool isHide;
  final TextInputType keyboardType;
  final TextEditingController controller;

  @override
  // ignore: library_private_types_in_public_api
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "Svp saisissez {$widget.labelText}";
          }
          return null;
        },
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        style: const TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: greenColor),
              borderRadius: BorderRadius.circular(15)),
          hintText: widget.labelText,
          labelText: widget.labelText,
          labelStyle: const TextStyle(color: Colors.white, fontSize: 18),
          fillColor: Colors.grey,
          filled: true,
        ),
        obscureText: widget.isHide,
      ),
    );
  }
}
