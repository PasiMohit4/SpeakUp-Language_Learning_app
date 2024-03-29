import 'package:flutter/material.dart';
import 'package:speak_up/constants.dart';


class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final IconData icon;
  final String? Function(String?)? validator;

  const TextInputField({Key? key,
    required this.controller,
    required this.labelText,
    this.isObscure = false,
    required this.icon,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 20,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: borderColor,
          )
        ),
          focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
          color: borderColor,
          )
        ),
      ),
      obscureText: isObscure,
      validator: validator,
    );
  }
}
