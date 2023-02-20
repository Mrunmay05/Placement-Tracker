import 'package:flutter/material.dart';
import 'package:tnp_app/components/inputTextField.dart';
import 'package:tnp_app/components/landing_button.dart';
import 'package:tnp_app/components/operationLabel.dart';
import 'package:tnp_app/constants/const_formats.dart';
import 'package:tnp_app/constants/const_formats.dart';
enum Gender { male, female }

enum Branch { CS, IT, EnTC }

class UpdateScreen extends StatefulWidget {
  static const String id='UpdateRecord';
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
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
          'Update Record',
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
                    operationLabelText(operationLabel: 'Update Student',),
                    const SizedBox(
                      height: 45,
                    ),
                    InputTextField(hintData: 'Full Name',validate: ((String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return "";
                        }),
                        labelName: 'Name',
                        
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(hintData: 'Email Id',validate: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          // using regular expression
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }
                          return "";
                        },
                        labelName: 'Email Id', 
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(hintData: 'Roll no(E.g 31101)',validate: ((value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                          return "";
                        }),
                        labelName: 'Roll Number',
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(hintData: 'Contact No',validate: (value) {
                          if (value!.length < 10 ||
                              value.length > 10 ||
                              value == null ||
                              value.isEmpty) {
                            return "Enter a valid contact number";
                          }
                          return "";
                        },
                        labelName: 'Contact Number',
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputTextField(hintData: 'College Registration Id',validate: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 11 ||
                              value.length > 11) {
                            return "Enter a valid registration id";
                          }
                          return "";
                        },
                        labelName: 'College Id',
                        ),
                    const SizedBox(height: 20,),
                    InputTextField(hintData: 'Placed Company Name',validate: (value) {
                      return '';
                    },
                    labelName: 'Company Name',
                    ),
                    const SizedBox(height: 20,),
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
                          'Update',
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