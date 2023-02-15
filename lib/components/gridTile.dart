import 'package:flutter/material.dart';

class Grid_Tile extends StatelessWidget {
  final String description;
  final Color tileColor;
  final Color textColor;
  final VoidCallback onPressed;
  const Grid_Tile({
    Key? key, required this.description, required this.tileColor, required this.textColor, required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPressed,child: Container(decoration: BoxDecoration(color:tileColor,borderRadius: BorderRadius.circular(20)),child: Center(child: Text(description,textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Comfortaa',fontSize: 20,fontWeight: FontWeight.w500,color:textColor),)),),);
  }
}