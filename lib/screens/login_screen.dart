import 'package:flutter/material.dart';
import 'package:tnp_app/components/inputTextField.dart';
import 'package:tnp_app/components/landing_button.dart';
import 'package:tnp_app/screens/opening_screen.dart';
class LoginScreen extends StatefulWidget {
  static const String id='LoginScreen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                Text('Log-In',
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
                const InputTextField(hintData: 'Email',),
                const SizedBox(
                  height: 20,
                ),
                const InputPasswordField(hintData: 'Password'),
                const SizedBox(height: 20,),
                LandingButton(color: Color(0xFF0D47A1), text: const Text('Log-In',style: TextStyle(color: Colors.white,fontFamily: 'Comfortaa',fontSize: 15,fontWeight: FontWeight.w600),), func: (){Navigator.pushNamed(context, OpeningScreen.id);})
              ]
              ),
          ),
        ),
      ),
    );
  }
}