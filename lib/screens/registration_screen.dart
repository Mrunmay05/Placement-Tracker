import 'package:tnp_app/components/landing_button.dart';
import 'package:tnp_app/components/inputTextField.dart';
import 'package:flutter/material.dart';
import 'package:tnp_app/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id='RegistrationSceen';
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:const EdgeInsets.only(top: 190),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[900]
                ),
                ),
                const SizedBox(
                  height: 45,
                ),
                const InputTextField(hintData: 'Full Name',),
                const SizedBox(
                  height: 20,
                ),
                const InputTextField(hintData: 'Email',),
                const SizedBox(
                  height: 20,
                ),
                const InputPasswordField(hintData: 'Password(min. 8 characters)'),
                const SizedBox(height: 20,),
                const InputPasswordField(hintData: 'Confirm Password',),
                const SizedBox(height: 20,),
                LandingButton(color: Color(0xFF0D47A1), text: const Text('Register',style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: 15,fontWeight: FontWeight.w600),), func: (){Navigator.pushNamed(context, LoginScreen.id);})
              ]
              ),
          ),
        ),
      ),
    );
  }
}

