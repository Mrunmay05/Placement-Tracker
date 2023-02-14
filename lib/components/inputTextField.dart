import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String? hintData;
  const InputTextField({super.key, this.hintData});
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        fillColor: Colors.black,
        hintText: hintData,
        hintStyle: const TextStyle(
          color: Colors.grey
          ),
        contentPadding:
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
        enabledBorder: OutlineInputBorder(
          borderSide:BorderSide(color: Color(0xFF0D47A1),),
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
        focusedBorder: OutlineInputBorder(
          borderSide:BorderSide(color: Color(0xFF0D47A1),),
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
        ),
      )
    );
  }
}