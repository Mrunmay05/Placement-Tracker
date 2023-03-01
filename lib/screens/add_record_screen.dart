import 'package:tnp_app/constants/const_formats.dart';
import 'package:flutter/material.dart';
import 'package:tnp_app/components/inputTextField.dart';
import '../components/landing_button.dart';
import 'package:tnp_app/components/operationLabel.dart';

enum Gender { male, female }

enum Branch { CS, IT, EnTC }

class AddRecord extends StatefulWidget {
  static const String id = 'AddRecord';
  const AddRecord({super.key});

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController rollController;
  late TextEditingController phoneController;
  late TextEditingController collegeController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Gender? _gen = Gender.male;
  Branch? _br = Branch.CS;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(13, 71, 161, 1),
        centerTitle: true,
        title: const Text(
          'Add Record',
          style: kAppBarTextStyle
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    operationLabelText(operationLabel: 'Add Student',),
                    const SizedBox(
                      height: 45,
                    ),
                    InputTextField(
                      // controller: nameController,
                      hintData: 'Full Name',validate: ((String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return "";
                        }),labelName: 'Name',),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(
                      // controller: emailController,
                      hintData: 'Email Id',validate: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          // using regular expression
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }
                          return "";
                        }, labelName: 'Email', ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(
                      // controller: rollController,
                      hintData: 'Roll no(E.g 31101)',validate: ((value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                          return "";
                        }),labelName: 'Roll Number',),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(
                      // controller: phoneController,
                      hintData: 'Contact No',validate: (value) {
                          if (value!.length < 10 ||
                              value.length > 10 ||
                              value == null ||
                              value.isEmpty) {
                            return "Enter a valid contact number";
                          }
                          return "";
                        },labelName: 'Contact Number',),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(
                      // controller: collegeController,
                      hintData: 'College Registration Id',validate: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 11 ||
                              value.length > 11) {
                            return "Enter a valid registration id";
                          }
                          return "";
                        },labelName: 'College Reg. Id',),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.blue[900],
                      height: 1,
                      thickness: 2,
                    ),
                    RadioListTile(
                      selectedTileColor: Colors.black,
                      activeColor: Colors.blue[900],
                      title: const Text(
                        'Male',
                        style: TextStyle(fontFamily: 'Comfortaa'),
                      ),
                      groupValue: _gen,
                      value: Gender.male,
                      onChanged: (Gender? gen) {
                        setState(() {
                          _gen = gen;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.blue[900],
                      title: const Text(
                        'Female',
                        style: TextStyle(fontFamily: 'Comfortaa'),
                      ),
                      groupValue: _gen,
                      value: Gender.female,
                      onChanged: (Gender? gen) {
                        setState(() {
                          _gen = gen;
                        });
                      },
                    ),
                    Divider(
                      color: Colors.blue[900],
                      height: 1,
                      thickness: 2,
                    ),
                    RadioListTile(
                      activeColor: Colors.blue[900],
                      title: const Text(
                        'Computer Science',
                        style: TextStyle(fontFamily: 'Comfortaa'),
                      ),
                      groupValue: _br,
                      value: Branch.CS,
                      onChanged: (Branch? br) {
                        setState(() {
                          _br = br;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.blue[900],
                      title: const Text(
                        'IT',
                        style: TextStyle(fontFamily: 'Comfortaa'),
                      ),
                      groupValue: _br,
                      value: Branch.IT,
                      onChanged: (Branch? br) {
                        setState(() {
                          _br = br;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.blue[900],
                      title: const Text(
                        'Electronic and TeleCommunications',
                        style: TextStyle(fontFamily: 'Comfortaa'),
                      ),
                      groupValue: _br,
                      value: Branch.EnTC,
                      onChanged: (Branch? br) {
                        setState(() {
                          _br = br;
                        });
                      },
                    ),
                    Divider(
                      color: Colors.blue[900],
                      height: 3,
                      thickness: 2,
                    ),
                    LandingButton(
                        color: const Color(0xFF0D47A1),
                        text: const Text(
                          'Add Student',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Comfortaa',
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        func: () {
                          if (_formKey.currentState!.validate()) {}
                        }),
                        const SizedBox(height: 20,)
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

Future <void> getData() async{
  
}




