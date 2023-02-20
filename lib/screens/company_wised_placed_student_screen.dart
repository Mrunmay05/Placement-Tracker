import 'package:flutter/material.dart';
import 'package:tnp_app/constants/const_formats.dart';

class CompanyWisedPlacedScreen extends StatefulWidget {
  static const String id='CompanyWisedPlacedScreen';
  const CompanyWisedPlacedScreen({super.key});

  @override
  State<CompanyWisedPlacedScreen> createState() => _CompanyWisedPlacedScreenState();
}

class _CompanyWisedPlacedScreenState extends State<CompanyWisedPlacedScreen> {
  List<Widget> placed_student=const [
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
    Card(
      child: ListTile(
        title: Text('ABC',style: kListTileName),
        subtitle: Text('MasterCard',style:kListTileGenderMale),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: const Color(0xFF0D47A1),
        centerTitle: true,
        title: const Text('Company Placed',
        style: TextStyle(
          fontFamily: 'Comfortaa',
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
        ),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: ListView(
            children: placed_student
          )
        )
      ),
    );
  }
}