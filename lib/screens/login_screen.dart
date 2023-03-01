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
  // late TextEditingController emailController;
  // late TextEditingController passController;
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
                InputTextField(
                  // controller: emailController,
                  hintData: 'Email',validate: (value) {
                  if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }

                          // using regular expression
                          if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Please enter a valid email address";
                          }
                          return "";
                },
                labelName: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                InputPasswordField(
                  // controller: passController,
                  hintData: 'Password',validate: (value) {
                  if(value==null||value.isEmpty||value.length<8){
                    return 'Password should be of minimum 8 characters!';
                  }
                  return "";
                },
                labelName: 'Password',
                ),
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