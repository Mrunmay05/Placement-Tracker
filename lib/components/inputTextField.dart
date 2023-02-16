import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String? hintData;
  final String Function(String?) validate;
  const InputTextField({super.key, this.hintData, required this.validate});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      autofocus: true,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        fillColor: Colors.black,
        hintText: hintData,
        hintStyle: const TextStyle(
          color: Colors.grey
          ),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border:const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
        enabledBorder: const OutlineInputBorder(
          borderSide:BorderSide(color: Color(0xFF0D47A1),),
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
        focusedBorder:const OutlineInputBorder(
          borderSide:BorderSide(color: Color(0xFF0D47A1),),
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
        ),
      )
    );
  }
}
class InputPasswordField extends StatelessWidget {
  final String? hintData;
  final String Function(String?) validate;
  const InputPasswordField({super.key, this.hintData, required this.validate});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      obscureText: true,
      autofocus: true,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        fillColor: Colors.black,
        hintText: hintData,
        hintStyle: const TextStyle(
          color: Colors.grey
          ),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
        enabledBorder: const OutlineInputBorder(
          borderSide:BorderSide(color: Color(0xFF0D47A1),),
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
        focusedBorder: const OutlineInputBorder(
          borderSide:BorderSide(color: Color(0xFF0D47A1),),
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
        ),
      )
    );
  }
}