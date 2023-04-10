import 'package:dotphi_seo/model/leads.dart';
import 'package:dotphi_seo/pages/data.dart';
import 'package:dotphi_seo/pages/leads_screen.dart';
import 'package:dotphi_seo/pages/login_screen.dart';
import 'package:dotphi_seo/pages/profile_screen.dart';
import 'package:dotphi_seo/pages/report.dart';
import 'package:dotphi_seo/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'home': (context) => const LoginScreen(),
      },
    );
  }
}
