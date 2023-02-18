import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tnp_app/screens/add_record_screen.dart';
import 'package:tnp_app/screens/delete_record_screen.dart';
import 'package:tnp_app/screens/update_record_screen.dart';
import 'package:tnp_app/screens/home_screen.dart';


class OpeningScreen extends StatefulWidget {
  static const String id='OpeningScreen';
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  int _selectedIndex=0;
  final _listScreen=[
    const HomeScreen(),
    const AddRecord(),
    const DeleteRecord(),
    const UpdateScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_listScreen[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex,
        items: const [ 
          Icon(CupertinoIcons.home,color: Colors.white,),
          Icon(CupertinoIcons.add,color: Colors.white,),
          Icon(CupertinoIcons.bin_xmark,color: Colors.white,),
          Icon(CupertinoIcons.create_solid,color: Colors.white,),],
        height: 60,
        color:const Color(0xFF0D47A1),
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            _selectedIndex=index;
          });
        },

        )
    );
  }
}

