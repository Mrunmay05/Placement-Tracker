import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  // final TextEditingController controller;
  final String? hintData;
  final String Function(String?) validate;
  final String labelName;
  const InputTextField({super.key, this.hintData, required this.validate, required this.labelName});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      validator: validate,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        label: Text(labelName),
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
  // final TextEditingController controller;
  final String? hintData;
  final String Function(String?) validate;
  final String labelName;
  const InputPasswordField({super.key, this.hintData, required this.validate, required this.labelName,});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      validator: validate,
      obscureText: true,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: labelName,
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