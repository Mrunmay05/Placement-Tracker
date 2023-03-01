import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tnp_app/components/landing_button.dart';
import 'package:tnp_app/screens/login_screen.dart';
import 'package:tnp_app/screens/registration_screen.dart';
class LandingScreen extends StatefulWidget {
  static const String id='LandingScreen';
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          
          padding:const EdgeInsets.only(top: 80),
          height: double.infinity,
          width: double.infinity,
          decoration:const BoxDecoration(
            color: Colors.white
          ),
          child: Column(
            children: [
              Container(
                child: Image.asset('images/pict2.png'),
              ),
              AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('PLACEMENT TRACKER',
                      textAlign: TextAlign.center,
                      textStyle:const TextStyle(
                        color: Color(0xFF0D47A1),
                        fontSize: 55.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Comfortaa'
                  ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              LandingButton(
                color:const Color(0xFF0D47A1),
                text:const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w600,
                    fontSize: 15
                  ),
                ),
                func: (){
                  Navigator.pushNamed(context, LoginScreen.id);
                }
                ),
                LandingButton(
                color:const Color(0xFF0D47A1),
                text:const Text(
                  'Sign-Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w600,
                    fontSize: 15
                  ),
                ),
                func: (){
                  Navigator.pushNamed(context, RegistrationScreen.id);
                }
                )
            ],
            
            ),
        )
      ),
    );
  }
}