import 'package:tnp_app/constants/const_formats.dart';
import 'package:flutter/material.dart';
import 'package:tnp_app/components/operationLabel.dart';
import 'package:tnp_app/components/inputTextField.dart';
import 'package:tnp_app/components/landing_button.dart';

class DeleteRecord extends StatefulWidget {
  static const String id = 'DeleteRecord';
  const DeleteRecord({super.key});

  @override
  State<DeleteRecord> createState() => _DeleteRecordState();
}

class _DeleteRecordState extends State<DeleteRecord> {
  late TextEditingController nameController;
  late TextEditingController collegeController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: const Text(
          'Delete Record',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(left: 24,right: 24),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  operationLabelText(operationLabel: 'Delete Student'),
                  const SizedBox(height: 50,),
                  InputTextField(
                    // controller: nameController,
                    hintData: 'Full Name',
                    validate: (value) {
                      if(value==null||value.isEmpty) return 'Please enter some text';
                      return '';
                    },
                    labelName: 'Name',
                  ),
                  const SizedBox(height: 35,),
                  InputTextField(
                    // controller: collegeController,
                    hintData: 'College Registration Id',
                    validate: (value) {
                      if(value==null||value.isEmpty||value.length<11||value.length>11) return 'Enter a valid Registration Id';
                      return '';
                    },
                    labelName: 'College Reg. Id',
                  ),
                  const SizedBox(height: 35,),
                  LandingButton(color:const Color(0xFF0D47A1), text: Text('Delete Student',style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: 15,fontWeight: FontWeight.w600),), func: (() {
                    
                  })
                )
                ],
                )
              ),
          )
          ),
      ),
    );
  }
}
