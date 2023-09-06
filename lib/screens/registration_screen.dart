import 'package:tnp_app/components/landing_button.dart';
import 'package:tnp_app/components/inputTextField.dart';
import 'package:flutter/material.dart';
import 'package:tnp_app/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'RegistrationSceen';
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // late TextEditingController nameController;
  // late TextEditingController emailController;
  // late TextEditingController passController;
  late TextEditingController confirmPassController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 190),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[900]),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  InputTextField(
                    // controller: nameController,
                    hintData: 'Full Name',
                    validate: (value) {
                      if (value == null || value.isEmpty)
                        return 'Please enter some text';
                      return '';
                    },
                    labelName: 'Name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputTextField(
                    // controller: emailController,
                    hintData: 'Email',
                    validate: (value) {
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
                  InputPasswordField(
                    // controller: passController,
                    hintData: 'Password(minimum 8 characters)',
                    validate: (value) {
                      if (value == null || value.isEmpty || value.length < 8) {
                        return 'Password should be of minimum 8 characters!';
                      }
                      return "";
                    },
                    labelName: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputPasswordField(
                    // controller: confirmPassController,
                    hintData: 'Confirm Password',
                    validate: (value) {
                      if (value == null || value.isEmpty || value.length < 8) {
                        return 'Password should be of minimum 8 characters!';
                      }
                      return "";
                    },
                    labelName: 'Confirm Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LandingButton(
                      color: const Color(0xFF0D47A1),
                      text: const Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Comfortaa',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      func: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      })
                ]),
          ),
        ),
      ),
    );
  }
}
