import 'package:flutter/material.dart';
import 'package:tnp_app/screens/landing_screen.dart';
import 'package:tnp_app/screens/login_screen.dart';
import 'package:tnp_app/screens/opening_screen.dart';
import 'package:tnp_app/screens/registration_screen.dart';
import 'package:tnp_app/screens/add_record_screen.dart';
import 'package:tnp_app/screens/delete_record_screen.dart';
import 'package:tnp_app/screens/update_record_screen.dart';
import 'package:tnp_app/screens/general_student_list.dart';
import 'package:tnp_app/screens/company_wised_placed_student_screen.dart';
import 'package:tnp_app/screens/not_placed_screen.dart';
import 'package:flutter/services.dart';
import 'package:tnp_app/screens/placed_student_screen.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  // Step 3
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LandingScreen.id:(context) => const LandingScreen(),
        RegistrationScreen.id:(context) => const RegistrationScreen(),
        LoginScreen.id:(context) => const LoginScreen(),
        OpeningScreen.id:(context) => const OpeningScreen(),
        AddRecord.id:(context) => const AddRecord(),
        DeleteRecord.id:(context) => const DeleteRecord(),
        UpdateScreen.id:(context) => const UpdateScreen(),
        StudentList.id:(context) => const StudentList(),
        CompanyWisedPlacedScreen.id:(context) => const CompanyWisedPlacedScreen(),
        NotPlacedScreen.id:(context) => const NotPlacedScreen(),
        PlacedStudentScreen.id:(context) => const PlacedStudentScreen()

      },
      initialRoute: LandingScreen.id,

    );
  }
}
