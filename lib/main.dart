import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:neumorphic_signin_and_signup/bindings/initial_binding.dart';
import 'package:neumorphic_signin_and_signup/helpers/constants.dart';
import 'package:neumorphic_signin_and_signup/screens/auth_page.dart';
import 'package:neumorphic_signin_and_signup/screens/home_screen.dart';
import 'package:neumorphic_signin_and_signup/screens/signIn_screen/signIn_screeen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await firebaseInitialization.then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Neumorphic Signin and signup',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: InitialBinding(),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Claymorphisim();
          } else {
            return SignInScreen();
          }
        },
      ),
    );
  }
}
