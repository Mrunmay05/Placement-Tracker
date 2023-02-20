import 'package:flutter/material.dart';
import 'package:tnp_app/screens/general_student_list.dart';
import '../components/gridTile.dart';
import 'package:tnp_app/screens/company_wised_placed_student_screen.dart';
import 'package:tnp_app/screens/not_placed_screen.dart';
import 'package:tnp_app/screens/placed_student_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id='HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0D47A1),
        centerTitle: true,
        title: const Text('Placement Tracker',
        style: TextStyle(
          fontFamily: 'Comfortaa',
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
        ),
      ),
      body:SafeArea(child: Expanded(
        child: Container(
          padding:const EdgeInsets.all(10),
          child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
          children: [
            Grid_Tile(description: 'Student List',tileColor: Color(0xFF0D47A1),textColor: Colors.white,onPressed: (){Navigator.pushNamed(context, StudentList.id);},),
            Grid_Tile(description: 'Placed Students', tileColor: Color(0xFF5193AF), textColor: Color(0xFF0D47A1),onPressed: () {Navigator.pushNamed(context, PlacedStudentScreen.id);},),
            Grid_Tile(description: 'Not Placed Students', tileColor: Color(0xFF5193AF), textColor: Color(0xFF0D47A1),onPressed: () {Navigator.pushNamed(context, NotPlacedScreen.id);},),
            Grid_Tile(description: 'Company Wised Placed List',tileColor: Color(0xFF0D47A1),textColor: Colors.white,onPressed: () {Navigator.pushNamed(context, CompanyWisedPlacedScreen.id);},),
          ],
          ),
        ),
      )),
    );
  }
}