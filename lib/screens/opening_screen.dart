import 'package:flutter/material.dart';

class OpeningScreen extends StatefulWidget {
  static const String id='OpeningScreen';
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Container(

      ),
    );
  }
}