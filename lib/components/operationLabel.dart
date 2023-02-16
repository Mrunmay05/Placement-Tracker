import 'package:flutter/material.dart';

class operationLabelText extends StatelessWidget {
  late String operationLabel;
  operationLabelText({required this.operationLabel, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      operationLabel,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontFamily: 'Comfortaa',
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colors.blue[900]),
    );
  }
}