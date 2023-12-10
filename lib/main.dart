import 'package:demoapp/auth/auth.dart';
import 'package:demoapp/auth/login_or_register.dart';
import 'package:demoapp/firebase_options.dart';
import 'package:demoapp/pages/about_page.dart';
import 'package:demoapp/pages/home_page.dart';
import 'package:demoapp/pages/profile_page.dart';
import 'package:demoapp/theme/dark_mode.dart';
import 'package:demoapp/theme/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/login_register_page': (context) => const LoginOrRegister(),
        '/home_page': (context) => const HomePage(),
        '/profile_page': (context) => ProfilePage(),
        '/about_page': (context) => const AboutPage(),
      },
    );
  }
}
