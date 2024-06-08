import 'package:flutter/material.dart';
import 'package:hw10_fashios_app/pages/home_page.dart';
import 'package:hw10_fashios_app/pages/register_page.dart';
import 'package:hw10_fashios_app/pages/login_page.dart';
import 'package:hw10_fashios_app/pages/splash_page.dart';
import 'package:hw10_fashios_app/pages/successful_page.dart';

void main() {
  runApp(const MiFashion());
}

class MiFashion extends StatelessWidget {
  const MiFashion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: {
        "splash": (context) => const SplashPage(),
        "login": (context) => const LoginPage(),
        "register": (context) => const RegisterPage(),
        "successfulPage": (context) => const SuccessfulPage(),
        "homePage": (context) => HomePage(),
      },
    );
  }
}
