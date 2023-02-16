import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tnp_app/components/inputTextField.dart';
import '../components/landing_button.dart';

enum Gender { male, female }

enum Branch { CS, IT, EnTc }

class AddRecord extends StatefulWidget {
  static const String id = 'AddRecord';
  const AddRecord({super.key});

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
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
          style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 20,
              fontWeight: FontWeight.w600),
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
                    Text(
                      'Add Student',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue[900]),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    TextFormField(
                        validator: ((String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                        }),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          fillColor: Colors.black,
                          hintText: 'Full Name',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          // using regular expression
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          fillColor: Colors.black,
                          hintText: 'Email Id',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        validator: ((value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                        }),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          fillColor: Colors.black,
                          hintText: 'Roll No(E.g: 31101)',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        validator: (value) {
                          if (value!.length < 10 ||
                              value.length > 10 ||
                              value == null ||
                              value.isEmpty) {
                            return "Enter a valid contact number";
                          }
                        },
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          fillColor: Colors.black,
                          hintText: 'Contact Number',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 11 ||
                              value.length > 11) {
                            return "Enter a valid registration id";
                          }
                        },
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          fillColor: Colors.black,
                          hintText: 'College Registration Id',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(22.0),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(22.0)),
                          ),
                        )),
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
                      value: Branch.EnTc,
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
                        SizedBox(height: 20,)
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
