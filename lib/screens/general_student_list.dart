import 'package:flutter/material.dart';
import 'package:tnp_app/constants/const_formats.dart';
class StudentList extends StatefulWidget {
  static const String id='StudentList';
  const StudentList({super.key});

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  List<Widget> student=const [
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Male',style:kListTileGenderMale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Female',style:kListTileGenderFemale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Female',style:kListTileGenderFemale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Female',style:kListTileGenderFemale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Male',style:kListTileGenderMale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Male',style:kListTileGenderMale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Female',style:kListTileGenderFemale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Male',style:kListTileGenderMale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Male',style:kListTileGenderMale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Male',style:kListTileGenderMale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Male',style:kListTileGenderMale ),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: const Text('Male',style:kListTileGenderMale ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text('General Student List',style:kAppBarTextStyle ,)
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left:15,right: 15),
          child: ListView(
            children: student
          )

        ),
      ),
    );
  }
}